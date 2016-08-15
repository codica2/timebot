ActiveAdmin.register User do

  menu priority: 2

  index do
    selectable_column
    id_column
    column :name
    column :is_speaking
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :is_speaking
    end

    f.actions
  end

  permit_params :name, :is_speaking

  collection_action :sync_users, method: :post do
    SlackClient.new.sync_users
    redirect_to admin_users_path
  end

  sidebar :additional_actions, only: :index do
    link_to 'Sync users with Slack', sync_users_admin_users_path, method: :post, class: 'button'
  end
end
