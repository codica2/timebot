module ActiveAdmin
  module DashboardHelper
    def hours_worked(instance)
      collection = apply_date_filter(instance)
      total_time(collection)
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

    def apply_date_filter(instance)
      if params.dig(:q, :date_gteq_date) && params.dig(:q, :date_lteq_date)
        instance.time_entries.in_interval(params.dig(:q, :date_gteq_date), params.dig(:q, :date_lteq_date))
      else
        instance.time_entries
      end
    end

    def total_time(time_entries)
      (time_entries.map(&:minutes).select(&:present?).inject(&:+).to_f / 60.0).round(2)
    end

    def records(time_entries)
      time_entries.map { |t| "#{t.details} (#{(t.minutes.to_f / 60.0).round(1)} h)" }
    end

    def stats_for_project(project)
      collection = apply_date_filter(project)

      {
        name: project.name,
        hours_worked: total_time(collection),
        users: collection.map(&:user).uniq.map do |user|
          {
            name: user.name,
            hours_worked: total_time(collection.select { |time_entry| time_entry.user_id == user.id }),
            records: records(collection.select { |time_entry| time_entry.user_id == user.id })
          }
        end.sort { |a, b| b[:hours_worked] <=> a[:hours_worked] }
      }
    end

    def dashboard_projects_stats
      projects = Project.all.map do |project|
        stats_for_project(project)
      end.select { |project| !project[:hours_worked].zero? }

      projects.sort { |a, b| b[:hours_worked] <=> a[:hours_worked] }
    end

    def sql_dashboard_projects_stats
      sql = <<~SQL
        SELECT
          projects.id AS "project_id",
          projects.name AS "project",
          users.name AS "user",
          time_entries.details,
          time_entries.minutes
        FROM projects
          INNER JOIN time_entries ON time_entries.project_id = projects.id
          INNER JOIN users ON time_entries.user_id = users.id
        WHERE date BETWEEN '#{params[:q][:date_gteq_date]}' AND '#{params[:q][:date_lteq_date]}'
        ORDER BY (SELECT SUM(t.minutes)
                  FROM time_entries AS t
                  WHERE t.project_id = projects.id AND (date BETWEEN '#{params[:q][:date_gteq_date]}'
                        AND '#{params[:q][:date_lteq_date]}')) DESC,
                 (SELECT SUM(t.minutes)
                  FROM time_entries AS t
                  WHERE t.project_id = projects.id AND t.user_id = users.id
                        AND (date BETWEEN '#{params[:q][:date_gteq_date]}' AND '#{params[:q][:date_lteq_date]}')) DESC,
                 time_entries.minutes DESC
      SQL
      result = TimeEntry.connection.execute(sql).to_a

      result.map { |h| h['project'] }.uniq.map do |project|
        project_rows = result.select { |h| h['project'] == project }
        {
          id: project_rows.first['project_id'],
          name: project,
          total: (project_rows.map { |h| h['minutes'] }.sum / 60.0).round(1),
          users: project_rows.map { |h| h['user'] }.uniq.map do |user|
            user_rows = result.select { |h| h['project'] == project && h['user'] == user }
            {
              name: user,
              total: (user_rows.map { |h| h['minutes'] }.sum / 60.0).round(1),
              entries: user_rows.map { |h| { time: (h['minutes'] / 60.0).round(1), details: h['details'] } }
            }
          end,
        }
      end
    end

    def team_project_time_entries(team_id)
      TimeEntry.includes(:user, :project).joins(:team)
        .where(teams: { id: team_id })
        .in_interval(params[:q][:date_gteq_date], params[:q][:date_lteq_date])
        .group_by(&:project)
        .sort { |a, b| time_worked(b) <=> time_worked(a) }
    end

    def project_time_entries
      TimeEntry.includes(:user, :project)
        .in_interval(params[:q][:date_gteq_date], params[:q][:date_lteq_date])
        .group_by(&:project)
        .sort { |a, b| time_worked(b) <=> time_worked(a) }
    end

    def time_worked(entry)
      (entry.last.map(&:minutes).sum / 60.0).round(1)
    end

    def user_names(entry)
      entry.last.map(&:user).map(&:name).uniq.to_sentence
    end
  end
end
