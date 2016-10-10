# frozen_string_literal: true
ActiveAdmin.register TimeEntry do
  menu priority: 4

  scope :today
  scope :yesterday
  scope :current_week
  scope :last_week
  scope :current_month

  filter :user, as: :select
  filter :project, as: :select
  filter :date, as: :date_range

  index do
    if params[:q].try(:[], :user_id_eq).present?
      projects = projects_by_user(user_id:    params[:q][:user_id_eq],
                                  scope:      params[:scope],
                                  start_date: params[:q][:date_gteq_date],
                                  end_date:   params[:q][:date_lteq_date])
      panel 'Projects' do
        ul do
          projects[:projects].each { |project_info| li project_info }
          li { b "Total: #{projects[:total]}" }
          li b work_time_for_month
        end
      end
    end
    if params[:q].try(:[], :project_id_eq).present?
      users = users_by_project(project_id:  params[:q][:project_id_eq],
                               scope:       params[:scope],
                               start_date:  params[:q][:date_gteq_date],
                               end_date:    params[:q][:date_lteq_date])
      panel 'Users' do
        ul do
          users[:users].each { |user_info| li user_info }
          li { b "Total: #{users[:total]}" }
          li b work_time_for_month
        end
      end
    end

    selectable_column
    id_column
    column :user, sortable: 'users.name'
    column :project, sortable: 'projects.name'
    column :date
    column(:time) { |entry| entry.is_absent ? '-' : entry.time }
    column(:details) { |entry| entry.is_absent ? entry.reason.capitalize : entry.details }
    actions
  end

  permit_params :user_id, :date, :time, :minutes, :details, :project_id, :id

  controller do
    def scoped_collection
      super.includes :user, :project
    end
  end
end
