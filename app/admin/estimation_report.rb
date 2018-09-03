# frozen_string_literal: true
ActiveAdmin.register TimeEntry, as: 'Estimation Reports' do
  menu parent: 'Reports'

  filter :user, as: :select, collection: proc { User.active.order(:name).map { |user| [user.name, user.id.to_s]} }, input_html: { multiple: true }
  filter :project, as: :select, collection: proc { Project.order(:name).map { |prj| [prj.name, prj.id.to_s]} }, input_html: { multiple: true }
  filter :details_contains, as: :text, input_html: { spellcheck: false }

  index do
    column :project
    column :details
    column :collaborators
    column :created_at
    column :trello_labels do |f|
      formatted_labels(f.trello_labels)[:labels]
    end
    column :estimate do |f|
      formatted_labels(f.trello_labels)[:estimate]
    end
    column :total_time
    column :status do |f|
      f.trello_list_name
    end
  end

  controller do
    def scoped_collection
      tickets = end_of_association_chain.where.not(ticket: nil).to_a.uniq(&:ticket)
      details = end_of_association_chain.where(ticket: nil).to_a.uniq(&:details)
      entries = (tickets + details).sort
      entries = TimeEntry.where(id: entries.map(&:id))

      start_date = params.dig(:q, :date_gteq_date)&.to_date
      end_date   = params.dig(:q, :date_lteq_date)&.to_date

      (start_date && end_date) ? entries.in_interval(start_date, end_date) : entries

    end
  end
end
