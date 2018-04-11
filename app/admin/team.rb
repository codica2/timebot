ActiveAdmin.register Team do
  menu priority: 4

  filter :projects, as: :select, collection: proc { Project.all.order(:name) }
  filter :users, as: :select, collection: proc { User.active.order(:name) }
  filter :team_lead, as: :check_boxes, collection: proc { Team.all.map(&:team_lead) }
  filter :project_manager, as: :check_boxes, collection: proc { Team.all.map(&:project_manager) }

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
      f.input :team_lead, as: :select, collection: User.active.order(:name), selected: f.object.team_lead
      f.input :project_manager, as: :select, collection: User.active.order(:name), selected: f.object.project_manager
    end

    f.actions
  end

end
