ActiveAdmin.register Holiday do
  menu priority: 5

  permit_params :name, :date
end
