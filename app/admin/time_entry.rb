# frozen_string_literal: true
ActiveAdmin.register TimeEntry do
  menu priority: 5

  filter :user, as: :select, collection: proc { User.active.order(:name) }
  filter :project, as: :select, collection: proc { Project.order(:name) }

  index do
    if params.dig(:q, :user_id_eq)
      projects = projects_by_user

      panel 'Projects' do
        ul do
          projects[:projects].each { |project_info| li project_info }
          li { b "Total: #{projects[:total]}" }
          li b work_time_for_scope if date_filter_is_applied
        end
      end
    elsif params.dig(:q, :project_id_eq)
      users = users_by_project

      panel 'Users' do
        ul do
          users[:users].each { |user_info| li user_info }
          li { b "Total: #{users[:total]}" }
          li b work_time_for_scope if date_filter_is_applied
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
    f.inputs 'New Absence' do
      f.input :user, collection: User.active.order(:name)
      f.input :project, collection: Project.order(:name)
      f.input :date, label: 'Date (leave blank if for today)', as: :datepicker
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
    def create
      hour_minutes = params[:time_entry][:time].scan(/(\d{1,2}):(\d{2})/).flatten.map(&:to_i)
      params[:time_entry][:minutes] = hour_minutes[0] * 60 + hour_minutes[1]
      params[:time_entry][:date] = Time.zone.today if params[:time_entry][:date].blank?
      super
    end
    def scoped_collection
      super.includes :user, :project
    end
  end
end
