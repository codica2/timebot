ActiveAdmin.register Absence do
  menu priority: 6

  filter :user, as: :select, collection: proc { User.active.order(:name) }
  filter :date
  filter :reason, as: :select, collection: proc { Absence.reasons.keys.map(&:capitalize) }

  index do
    selectable_column
    id_column
    column('User') { |absence| absence.user.name }
    column :date
    column('Reason') { |absence| status_tag absence.reason }
    actions
  end

  permit_params :user_id, :date, :reason, :comment
end
