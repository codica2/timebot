ActiveAdmin.register Holiday do
  menu priority: 6

  filter :name
  filter :date

  index do
    selectable_column
    id_column
    column :name
    column :date
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :date, as: :datepicker, datepicker_options: { firstDay: 1 }, input_html: { autocomplete: :off }, label: 'Date (YYYY-MM-DD)'
    end

    f.actions
  end

  permit_params :name, :date
end
