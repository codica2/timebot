ActiveAdmin.register User do

  menu priority: 2

  index do
    selectable_column
    id_column
    column :name
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
    end

    f.actions
  end

  permit_params :name


end
