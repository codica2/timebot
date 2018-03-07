ActiveAdmin.register Team do
  menu priority: 4

  permit_params :name, :description, :team_lead_id, :project_manager_id

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
      f.input :team_lead, as: :select, collection: User.active, selected: f.object.team_lead
      f.input :project_manager, as: :select, collection: User.active, selected: f.object.project_manager
    end

    f.actions
  end

end
