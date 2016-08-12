ActiveAdmin.register Project do

  menu priority: 3

  index do
    selectable_column
    id_column
    column :name
    column :created_at
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
