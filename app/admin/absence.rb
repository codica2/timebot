ActiveAdmin.register Absence do
  menu priority: 7

  filter :user, as: :select, collection: proc { User.active.order(:name).map{ |usr| [usr.name, usr.id.to_s]} }
  filter :reason, as: :select, collection: proc { Absence.reasons.map { |k, v| [k.capitalize, v] } }

  index do
    selectable_column
    id_column
    column('User') { |absence| absence.user.name }
    column :date
    column('Reason') { |absence| status_tag absence.reason }
    column :comment
    actions
  end

  form do |f|
    f.inputs 'New Absence' do
      f.input :user, collection: User.active.order(:name)
      f.input :date, as: :datepicker, input_html: { autocomplete: :off }
      f.input :date, label: 'To date (optional)', as: :datepicker, input_html: { class: 'date_range',name: 'absence_to_date', id: 'absence_to_date_input', autocomplete: :off}, required: false
      f.input :reason, as: :radio
      f.input :comment
    end
    f.actions
  end

  controller do
    def create
      if params[:absence_to_date].present?
        (params[:absence][:date].to_date..params[:absence_to_date].to_date).each do |date|
          params[:absence][:date] = date
          if Absence.create(permitted_params[:absence])
            flash[:notice] = 'Successfully created'
          else
            flash[:error] = 'Failed'
          end
        end
        redirect_to admin_absences_path
      else
        super
      end
    end

    def permitted_params
      params[:absence].permit(:user_id, :date, :reason, :comment)
    end
  end

  permit_params :user_id, :date, :reason, :comment
end
