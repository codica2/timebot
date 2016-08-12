ActiveAdmin.register TimeEntry do

  menu priority: 4

  index do
    columns do
      column do
        link_to('curren week', week_params(Date.beginning_of_week,
                                           Time.now.to_date))
      end
      column do
        link_to('last week', week_params(1.week.ago.beginning_of_week.to_date,
                                         1.week.ago.end_of_week.to_date))
      end
      column do
        link_to('current month', week_params(Time.now.beginning_of_month.to_date,
                                             Time.now.to_date))
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
    if params[:q].present?
      columns do
        if params[:q][:user_id_eq].present?
          column do
            total_time
          end
          if params[:q][:date_gteq_date].present? && params[:q][:date_lteq_date].present?
            column do
              total_time_by_date
            end
            column do

            end
          end
        end
      end
    end
    actions
  end


  permit_params :user_id, :date, :time, :minutes, :details, :project_id, :id

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
