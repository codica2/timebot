ActiveAdmin.register Team do
  menu priority: 4

  filter :projects, as: :select, collection: proc { Project.all.order(:name) }
  filter :users, as: :select, collection: proc { User.active.order(:name) }

  permit_params :name, :description

  index do
    selectable_column
    id_column
    column :name
    column :description
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :description
    end

    f.actions
  end

end
