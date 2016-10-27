ActiveAdmin.register Holiday do
  menu priority: 5

  filter :name
  filter :date

  index do
    selectable_column
    id_column
    column :name
    column :date
    actions
  end

  permit_params :name, :date
end
