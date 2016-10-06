# frozen_string_literal: true
module ActiveAdmin
  module ViewsHelper
    def projects_by_user(user_id:, scope:, start_date:, end_date:)
      user = User.find(user_id)

      project_ids = user.time_entries.pluck(:project_id).uniq.select(&:present?)

      projects = project_ids.map do |project_id|
        entries = TimeEntry.where(user_id: user_id, project_id: project_id)
        entries = entries.send(scope) if scope
        entries = entries.where(date: (start_date..end_date)) if start_date && end_date

        time    = entries.sum(:minutes)

        next ['', 0] if time.zero?

        hours   = time / 60
        minutes = time % 60
        ["#{Project.find(project_id).name}: #{pluralize(hours, 'hour')} #{pluralize(minutes, 'minute')}", time]
      end

      projects.sort! { |a, b| b[1] <=> a[1] }

      total_time = projects.map(&:last).inject(:+)
      total      = "#{pluralize(total_time / 60, 'hour')} #{pluralize(total_time % 60, 'minute')}"

      { projects: projects.map(&:first), total: total }
    end

    def users_by_project(project_id:, scope:, start_date:, end_date:)
      project = Project.find(project_id)

      user_ids = project.time_entries.pluck(:user_id).uniq

      users = user_ids.map do |user_id|
        entries = TimeEntry.where(user_id: user_id, project_id: project_id)
        entries = entries.send(scope) if scope
        entries = entries.where(date: (start_date..end_date)) if start_date && end_date

        time    = entries.sum(:minutes)

        next ['', 0] if time.zero?

        hours   = time / 60
        minutes = time % 60
        ["#{User.find(user_id).name}: #{pluralize(hours, 'hour')} #{pluralize(minutes, 'minute')}", time]
      end

      users.sort! { |a, b| b[1] <=> a[1] }

      total_time = users.map(&:last).inject(:+)
      total      = "#{pluralize(total_time / 60, 'hour')} #{pluralize(total_time % 60, 'minute')}"

      { users: users.map(&:first), total: total }
    end
  end
end
