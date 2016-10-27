# frozen_string_literal: true
ActiveAdmin.register_page 'Dashboard' do
  menu priority: 1, label: proc { I18n.t('active_admin.dashboard') }

  content title: proc { I18n.t('active_admin.dashboard') } do
    h3 'Users'
    users = dashboard_users_stats
    table_for users, class: 'index_table' do
      column('Name') { |user| user[:name] }
      column('Hours Worked') { |user| user[:hours_worked] }
      column('Estimated Hours Worked') { |user| user[:estimated_hours_worked] }
      column('Difference') { |user| user[:difference] }
    end

    h3 'Projects'
    projects = dashboard_projects_stats
    table_for projects, class: 'index_table' do
      column('Name') { |project| project[:name] }
      column('Hours Worked') { |project| project[:hours_worked]  }
    end
  end

  sidebar :filters do
    form class: 'filter_form', method: '/get', action: '/admin' do
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
