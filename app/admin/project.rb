ActiveAdmin.register Project do

  menu priority: 3

  index do
    selectable_column
    id_column
    column :name
    column :alias
    column :created_at
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :alias
    end

    f.actions
  end
  
  permit_params :name
  permit_params :alias
end
