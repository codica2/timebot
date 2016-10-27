# frozen_string_literal: true
module ActiveAdmin
  module ViewsHelper
    def projects_by_user
      projects = collection.map(&:project).uniq

      projects_info = projects.map do |project|
        entries = collection.select { |entry| entry.project_id == project.id }
        time = entries.map(&:minutes).select(&:present?).inject(&:+)
        hours   = time / 60
        minutes = time % 60

        ["#{project.name}: #{pluralize_time(hours, minutes)}", time]
      end

      projects_info.sort! { |a, b| b[1] <=> a[1] }

      total_time = projects_info.map(&:last).inject(:+)
      total      = "#{pluralize(total_time / 60, 'hour')} #{pluralize(total_time % 60, 'minute')}"

      { projects: projects_info.map(&:first), total: total }
    end

    def users_by_project
      users = collection.map(&:user).uniq

      users_info = users.map do |user|
        entries = collection.select { |entry| entry.user_id == user.id }
        time = entries.map(&:minutes).select(&:present?).inject(&:+)
        hours   = time / 60
        minutes = time % 60

        ["#{user.name}: #{pluralize_time(hours, minutes)}", time]
      end

      users_info.sort! { |a, b| b[1] <=> a[1] }

      total_time = users_info.map(&:last).inject(:+)
      total      = "#{pluralize(total_time / 60, 'hour')} #{pluralize(total_time % 60, 'minute')}"

      { users: users_info.map(&:first), total: total }
    end

    def work_time_for_scope
      start_date = Date.parse(params.dig(:q, :date_gteq_date))
      end_date   = Date.parse(params.dig(:q, :date_lteq_date))
      working_days = (start_date..end_date).select { |day| !day.saturday? && !day.sunday? }
      holidays = Holiday.pluck(:date)
      total_time = (working_days - holidays).count * 8
      "Total work time between #{start_date.strftime('%d.%m.%Y')} and #{end_date.strftime('%d.%m.%Y')}: #{total_time}"\
      ' hours'
    end

    def date_filter_is_applied
      params.dig(:q, :date_lteq_date) && params.dig(:q, :date_gteq_date)
    end

    private

    def pluralize_time(hours, minutes)
      "#{pluralize(hours, 'hour')} #{pluralize(minutes, 'minute')}"
    end
  end
end
