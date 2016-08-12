ActiveAdmin.register TimeEntry do

  menu priority: 4

  scope :current_week
  scope :last_week
  scope :last_month

  filter :user, as: :select
  filter :project, as: :select
  filter :date, as: :date_range

  index do

    if params[:q].present? && params[:q][:user_id_eq].present?
      projects = projects_info(params[:q][:user_id_eq],
                               params[:scope],
                               params[:q][:date_gteq_date],
                               params[:q][:date_lteq_date])
      panel "Projects" do
        ul do
          projects.each do |project_info|
            li project_info
          end
        end
      end
    end

    selectable_column
    id_column
    column :user
    column :project do |time|
      Project.find(time.project_id).name
    end
    column :date
    column :time
    column :details
    actions
  end

  permit_params :user_id, :date, :time, :minutes, :details, :project_id, :id

end
