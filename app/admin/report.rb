# frozen_string_literal: true
ActiveAdmin.register_page 'Report' do

  controller do
    def index
      unless params.dig(:q, :date_gteq_date) && params.dig(:q, :date_lteq_date)
        redirect_to admin_report_url(q: { date_gteq_date: Date.today.beginning_of_week,
                                          date_lteq_date: Date.today.end_of_week })
      end
    end
  end

  content title: proc { I18n.t('active_admin.dashboard') } do
    start_date = Date.parse(params.dig(:q, :date_gteq_date))
    end_date   = Date.parse(params.dig(:q, :date_lteq_date))

    h2 "Statistics for #{start_date.strftime('%b %e, %Y')} - #{end_date.strftime('%b %e, %Y')}"

    Team.all.each do |team|
      h3 "Project by Team #{team.name}"
      table(class: 'index_table report') do
        thead do
          th 'Project'
          th 'Ticket'
          th 'Labels'
          th 'Users Worked on'
          th 'Time'
          th 'Status'
        end
        tbody do
          team_project_time_entries(team.id).each_with_index do |company_time_entry, _index|
            tr(class: 'even report_by_ticket__project-name', 'data-id': company_time_entry.first.id) do
              td do
                b company_time_entry.first.name
              end
              td
              td
              td
              td do
                b time_worked(company_time_entry)
              end
              td
            end
            tbody('data-by-ticket-project-id': company_time_entry.first.id, style: 'display: none') do
              company_time_entry.last.group_by(&:details).each do |detail_time_entry|
                tr do
                  td
                  td detail_time_entry.first
                  td formatted_labels(detail_time_entry.last.map(&:trello_labels))[:labels]
                  td user_names(detail_time_entry)
                  td time_worked(detail_time_entry)
                  td detail_time_entry.flatten.last.trello_list_name
                end
              end
            end
          end
        end
      end
    end
  end

  sidebar :filters do
    form class: 'filter_form', method: '/get', action: '/admin/report' do
      div class: 'buttons' do
        button type: 'submit' do
          'Filter'
        end
        a class: 'clear_filters_btn', href: '#' do
          'Clear Filters'
        end
      end
    end
  end
end
