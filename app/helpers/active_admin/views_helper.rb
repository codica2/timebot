# frozen_string_literal: true
module ActiveAdmin
  module ViewsHelper
    def projects_by_user

      users = time_entries.map(&:user).uniq

      users.map do |user|

        projects = time_entries.map(&:project).uniq

        projects_info = projects.map do |project|
          entries = time_entries.select { |entry| entry.project_id == project.id && entry.user == user }
          if entries.empty?
            nil
          else
            time = entries.map(&:minutes).select(&:present?).inject(&:+)
            hours   = time / 60
            minutes = time % 60
            ["#{project.name}: #{pluralize_time(hours, minutes)}", time]
          end
        end.compact
        projects_info.sort! { |a, a2|
          a2[1] <=> a[1]
        }
        total_time = projects_info.map(&:last).inject(:+)
        total      = "#{pluralize(total_time / 60, 'hour')} #{pluralize(total_time % 60, 'minute')}"
        { user.name => { projects: projects_info.map(&:first), total: total } }
      end.inject(:merge)
    end

    def users_by_project
      projects = time_entries.map(&:project).uniq

      projects.map do |project|

        users = time_entries.map(&:user).uniq

        users_info = users.map do |user|
          entries = time_entries.select { |entry| entry.project_id == project.id && entry.user == user }
          if entries.empty?
            nil
          else
            time = entries.map(&:minutes).select(&:present?).inject(&:+)
            hours   = time / 60
            minutes = time % 60
            ["#{user.name}: #{pluralize_time(hours, minutes)}", time]
          end
        end.compact

        users_info.sort! { |a, a2|
          a2[1] <=> a[1]
        }
        total_time = users_info.map(&:last).inject(:+)
        total      = "#{pluralize(total_time / 60, 'hour')} #{pluralize(total_time % 60, 'minute')}"
        { project.name => { projects: users_info.map(&:first), total: total } }
      end.inject(:merge)

    end

    def selection_by_query
      query = params[:q][:details_contains].map { |d| "'%#{d}%'"}.join(' or details like ')
      query = "details like #{query}"
      time_entries.where(query)
    end

    def working_hours_by_ticket
      time_entries_by_ticket = selection_by_query

      out = get_data(time_entries_by_ticket)

      { ticket: get_ticket, users: out[:users_info].map(&:first), total: out[:total] }
    end

    def get_data(time_entries)
      users = time_entries.map(&:user).uniq.sort_by(&:name)
      users_info = users.map do |user|
        entries = time_entries.select { |entry| entry.user_id == user.id }
        time = entries.map(&:minutes).select(&:present?).inject(&:+)
        hours   = time / 60
        minutes = time % 60
        out = ["#{user.name}: "]
        params_details = params.dig(:q, :details_contains) || []
        if params_details.size > 1
          links = prettify_links
          params_details.each_with_index do |detail, i|
            entries_for_detail = entries.select { |entry| entry.details.match(detail) }
            if entries_for_detail.empty?
              out << ''
            else
              total_minutes = entries_for_detail.map(&:minutes).sum
              out << "#{' + ' if has_entry_to_left?(out, i)}#{total_minutes / 60}:#{'%02d' % (total_minutes % 60)} for #{links.find { |link| link.match(detail) } || detail}"
            end
          end
          out << " = #{pluralize_time(hours, minutes)}"
        else
          out << pluralize_time(hours, minutes).to_s
        end
        [out, time]
      end

      users_info.sort! { |a, b| b[1] <=> a[1] }
      total_time = users_info.map(&:last).inject(:+)
      total      = "#{pluralize(total_time / 60, 'hour')} #{pluralize(total_time % 60, 'minute')}"
      { users_info: users_info, total: total }
    end



    def get_ticket
      links = params[:q][:details_contains].select { |d| d[/(?:https?|ftp):\/\/[^\s\/$.?#].[^\s<>]*/] }
      prettified_links = prettify_links

      details = (params[:q][:details_contains] - params[:q][:details_contains].select { |d| d[/(?:https?|ftp):\/\/[^\s\/$.?#].[^\s<>]*/] }).join(', ')

      if links.present? && details.present?
        "Working hours by #{prettified_links.join(', ')} & details: #{details}"
      else
        "Working hours by #{prettified_links.join(', ').presence || details}"
      end
    end

    def prettify_links
      links = params[:q][:details_contains].select { |d| d[/(?:https?|ftp):\/\/[^\s\/$.?#].[^\s<>]*/] }
      links.map.with_index { |d, i| "<a href='#{d}'> Ticket#{i + 1 if links.count > 1}</a>" }
    end

    def work_time_for_scope
      start_date = Date.parse(params.dig(:q, :date_gteq_date))
      end_date   = Date.parse(params.dig(:q, :date_lteq_date))
      working_days = (start_date..end_date).select { |day| !day.saturday? && !day.sunday? }
      holidays = Holiday.pluck(:date)
      absence = (user_id = params.dig(:q, :user_id_in)) ? User.find(user_id).absences.pluck(:date) : []
      total_time = (working_days - holidays - absence).count * 8
      "Total work time between #{start_date.strftime('%b %e, %Y')} and #{end_date.strftime('%b %e, %Y')}"\
      ": #{total_time} hours"
    end

    def date_filter_is_applied
      params.dig(:q, :date_lteq_date) && params.dig(:q, :date_gteq_date)
    end

    def has_entry_to_left?(array, i)
      array[0..i].select { |el| el[/\d+/] }.any?
    end

    def pluralize_time(hours, minutes)
      "#{pluralize(hours, 'hour')} #{pluralize(minutes, 'minute')}"
    end

    def time_entries
      if @time_entries_collection
        @time_entries_collection
      else
        @time_entries_collection = TimeEntry.all.includes(:user)
        if (user_id = params.dig(:q, :user_id_in))
          @time_entries_collection = @time_entries_collection.where(user_id: user_id)
        end
        if (project_id = params.dig(:q, :project_id_in))
          @time_entries_collection = @time_entries_collection.where(project_id: project_id)
        end
        if (date_gteq = params.dig(:q, :date_gteq_date)) && (date_lteq = params.dig(:q, :date_lteq_date))
          @time_entries_collection = @time_entries_collection.where(['date BETWEEN ? AND ?', date_gteq, date_lteq])
        end
        @time_entries_collection
      end
    end
  end
end
