# frozen_string_literal: true
ActiveAdmin.register User do
  menu priority: 2

  batch_action :set_speaking_true do |ids|
    User.where(id: ids).update_all(is_speaking: true)
    redirect_to collection_path, alert: 'Users were updated'
  end

  batch_action :set_speaking_false do |ids|
    User.where(id: ids).update_all(is_speaking: false)
    redirect_to collection_path, alert: 'Users were updated'
  end

  index do
    selectable_column
    id_column
    column :name
    column :is_speaking
    column :is_active
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :is_speaking
      f.input :is_active
    end

    f.actions
  end

  permit_params :name, :is_speaking, :is_active

  collection_action :sync_users, method: :post do
    SlackClient.new.sync_users
    redirect_to admin_users_path
  end

  sidebar :additional_actions, only: :index do
    link_to 'Sync users with Slack', sync_users_admin_users_path, method: :post, class: 'button'
  end
end
