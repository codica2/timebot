module ActiveAdmin
  module DashboardHelper
    def hours_worked(instance)
      collection = if params.dig(:q, :date_gteq_date) && params.dig(:q, :date_lteq_date)
                     instance.time_entries.in_interval(params.dig(:q, :date_gteq_date), params.dig(:q, :date_lteq_date))
                   else
                     instance.time_entries
                   end

      (collection.map(&:minutes).select(&:present?).inject(&:+).to_f / 60.0).round(2)
    end

    def estimated_hours_worked(user)
      start_date = Date.parse(params.dig(:q, :date_gteq_date))
      end_date   = Date.parse(params.dig(:q, :date_lteq_date))
      working_days = (end_date >= Time.zone.today) ? (start_date...Time.zone.today) : (start_date..end_date)
      working_days = working_days.select { |day| !day.saturday? && !day.sunday? }
      holidays = Holiday.pluck(:date)
      absence = user.absences.pluck(:date)
      (working_days - holidays - absence).count * 8
    end

    def difference(user)
      if (hours = estimated_hours_worked(user))
        (hours_worked(user) - hours).round(2)
      end
    end

    def dashboard_users_stats
      users = User.active.map do |user|
        {
          name:                   user.name,
          hours_worked:           hours_worked(user),
          estimated_hours_worked: estimated_hours_worked(user),
          difference:             difference(user)
        }
      end

      users.sort { |a, b| b[:hours_worked] <=> a[:hours_worked] }
    end

    def dashboard_projects_stats
      projects = Project.all.map do |project|
        {
            name:         project.name,
            hours_worked: hours_worked(project)
        }
      end.select { |project| !project[:hours_worked].zero? }

      projects.sort { |a, b| b[:hours_worked] <=> a[:hours_worked] }
    end
  end
end