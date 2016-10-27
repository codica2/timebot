# frozen_string_literal: true
ActiveAdmin.register Project do
  menu priority: 3

  filter :name
  filter :alias

  index do
    selectable_column
    id_column
    column :name
    column :alias
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :alias
    end

    f.actions
  end

  permit_params :name, :alias
end
