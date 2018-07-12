# frozen_string_literal: true
ActiveAdmin.register TimeEntry do
  menu priority: 5

  filter :user, as: :select, collection: proc { User.active.order(:name).map { |user| [user.name, user.id.to_s]} }, input_html: { multiple: true }
  filter :project, as: :select, collection: proc { Project.order(:name).map { |prj| [prj.name, prj.id.to_s]} }, input_html: { multiple: true }
  filter :details_contains, as: :text, input_html: { spellcheck: false }

  index do

    if params.dig(:q, :details_contains) || params.dig(:q, :details_equals)
      time = working_hours_by_ticket

      panel "#{time[:ticket]}".html_safe do
        ul do
          time[:users].each do |user_info|
            div(class: 'line') do
              div(class: 'w150') { user_info[0] }
              user_info[1..-1].each do |block|
                div(class: 'w250') { block.html_safe }
              end
            end
          end
          li { b "Total: #{time[:total]}" }
          li b work_time_for_scope if date_filter_is_applied
        end
      end
    elsif params.dig(:q, :user_id_in)
      users = projects_by_user

      panel 'Projects' do
        if users.present?
          users.each_key do |user|
            div(class: 'line') do
              ul do
                li b user
                users[user][:projects].each { |project_info| li project_info }
                li { b "Total: #{users[user][:total]}" }
                li b work_time_for_scope(User.find_by(name: user)) if date_filter_is_applied
              end
            end
          end
        else
          div { 'No such entries' }
        end

      end
    elsif params.dig(:q, :project_id_in)
      projects = users_by_project

      panel 'Users' do
        if projects.present?
          projects.each_key do |project|
            div(class: 'line') do
              ul do
                li b project
                projects[project][:projects].each { |user_info| li user_info }
                li { b "Total: #{projects[project][:total]}" }
              end
            end
          end
        else
          div { 'No such entries' }
        end
      end
    end

    selectable_column
    id_column
    column :user, sortable: 'users.name'
    column :project, sortable: 'projects.name'
    column :date
    column(:time)
    column(:details)
    actions
  end

  form do |f|
    f.inputs 'New Time Entry' do
      f.input :user, collection: User.active.order(:name).map { |user| [user.name, user.id.to_s]}
      f.input :project, collection: Project.order(:name).map { |prj| [prj.name, prj.id.to_s]}
      f.input :date, label: 'Date (leave blank if for today)', as: :datepicker, datepicker_options: { firstDay: 1 }, input_html: { autocomplete: :off }
      f.input :time, label: 'Time (hh:mm)', required: true
      f.input :details
    end
    f.actions
  end

  action_item :new, only: :show do
    link_to 'New Time Entry', new_admin_time_entry_path
  end

  permit_params :user_id, :date, :time, :minutes, :details, :project_id, :id

  controller do
    include ActiveAdmin::ViewsHelper
    def index
      index! do |format|
        @time_entries = time_entries.order(params[:order].split('_').join(' ')).page(params[:page])
        @time_entries = selection_by_query.order(params[:order].split('_').join(' ')).page(params[:page]) if params[:q].present? && params[:q][:details_contains].present?
        format.html
      end
    end
    def create
      hour_minutes = params[:time_entry][:time].scan(/(\d{1,2})?:?(\d{2})/).flatten.map(&:to_i)
      params[:time_entry][:minutes] = (hour_minutes[0] || 0) * 60 + hour_minutes[1]
      params[:time_entry][:date] = Time.zone.today if params[:time_entry][:date].blank?
      super
    end
    def update
      hour_minutes = params[:time_entry][:time].scan(/(\d{1,2})?:?(\d{2})/).flatten.map(&:to_i)
      params[:time_entry][:minutes] = (hour_minutes[0] || 0) * 60 + hour_minutes[1]
      params[:time_entry][:date] = Time.zone.today if params[:time_entry][:date].blank?
      super
    end
    def scoped_collection
      super.includes :user, :project
    end
  end
end
