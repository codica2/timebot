# frozen_string_literal: true
ActiveAdmin.register User do
  menu priority: 2

  filter :name
  filter :is_active

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
    column :role
    column :is_speaking
    column :is_active
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :role, as: :select
      f.input :is_speaking
      f.input :is_active
      f.input :team, as: :select, collection: Team.all, selected: f.object.team
    end

    f.actions
  end

  permit_params :name, :is_speaking, :is_active, :team_id, :role

  collection_action :sync_users, method: :post do
    SlackClient.new.sync_users
    redirect_to admin_users_path
  end

  sidebar :additional_actions, only: :index do
    link_to 'Sync users with Slack', sync_users_admin_users_path, method: :post, class: 'button'
  end
end
