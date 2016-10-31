# frozen_string_literal: true
module Message
  module Handlers
    private

    def handle_message_show_projects
      projects = Project.order(:id)
      text = if projects.empty?
               'No projects added yet.'
             else
               projects.map { |project| "#{project.name.ljust(20)} Alias: #{project.alias}" }.join("\n")
             end
      sender.send_message(user, "```#{text}```")
    end

    def handle_unknown_message
      message = messages['understand'].sample
      sender.send_message(user, message['text'], message['options'])
    end

    def handle_message_show_help
      message = File.open(Rails.root.join('public', 'messages', 'help.txt').to_s, 'r').read
      sender.send_message(user, message)
    end

    def handle_message_over
      message = messages['thanks'].sample
      user.update(is_speaking: false)
      sender.send_message(user, message['text'], message['options'])
    end

    def handle_message_time_for_other_day
      match_data = data.text.match Message::Conditions::ENTER_TIME_FOR_DAY_REGEXP

      date_string  = match_data[1]
      project_name = match_data[2]
      time         = match_data[3]
      details      = match_data[4]

      project = find_project_by_name(project_name)

      unless project
        sender.send_message(user, 'No such project.')
        handle_message_show_projects
        return
      end

      date = parse_date(date_string)

      if date > Time.zone.today
        sender.send_message(user, 'Please enter a valid date.')
        return
      end

      user.add_time_entry(project_id: project.id, time: time, details: details, date: date)

      message = "Set timesheet for #{date.strftime('%-d.%-m.%Y')} for #{project.name}: #{time}."
      message += " Details: #{details || 'none'}." if details

      sender.send_message(user, message)
    end

    def handle_timesheet_entry
      match_data = data.text.match(Message::Conditions::ENTER_TIME_REGEXP)
      if match_data
        handle_valid_timesheet_entry(match_data[1], match_data[2], match_data[3])
      else
        handle_invalid_timesheet_entry
      end
    end

    def handle_valid_timesheet_entry(project_name, time, details)
      project = find_project_by_name(project_name)

      unless project
        sender.send_message(user, 'No such project.')
        handle_message_show_projects
        return
      end

      message = messages['log'].sample
      user.add_time_entry(project_id: project.id, time: time, details: details)
      sender.send_message(user, message['text'], message['options'])
    end

    def handle_invalid_timesheet_entry
      sender.send_message(user, 'Please add entry in following format: `PROJECT_NAME HOURS:MINUTES COMMENT`')
    end

    def handle_add_project
      project_name = data.text.match(Message::Conditions::ADD_PROJECT_REGEXP)[1]
      project = find_project_by_name(project_name)

      if project
        handle_project_exists(project)
        return
      end

      if project_name.length < Project::MINIMUM_PROJECT_NAME_LENGTH
        handle_project_name_too_short
        return
      end

      project = Project.create!(name: project_name)
      handle_project_created(project)
    end

    def handle_project_exists(project)
      sender.send_message(user, "Project with name #{project.name} already exists.")
    end

    def handle_project_name_too_short
      text = "Project name is too short - must be at least #{Project::MINIMUM_PROJECT_NAME_LENGTH} characters."
      sender.send_message(user, text)
    end

    def handle_project_created(project)
      sender.send_message(user, "Project with name #{project.name} is created.")
    end

    def handle_set_absence
      match_data = data.text.match Message::Conditions::SET_ABSENCE_REGEXP
      reason     = match_data[1].downcase
      start_date = parse_date(match_data[2])
      end_date   = parse_date(match_data[3])
      comment    = match_data[4]

      if Absence.reasons.keys.include?(reason) && start_date <= end_date
        (start_date..end_date).each { |date| user.add_absence(reason, date, comment) }
        text = "Set #{reason} from #{start_date.strftime('%b %e, %Y')} to #{end_date.strftime('%b %e, %Y')}."
        sender.send_message(user, text)
      else
        sender.send_message(user, 'Invalid reason or invalid dates.')
      end
    end

    def handle_ask_me
      message = messages['today'].sample
      sender.send_message(user, message['text'], message['options'])
      user.update(is_speaking: true)
    end

    def handle_reports
      time         = data.text.downcase.match(Message::Conditions::MESSAGE_IN_REPORT)[1]
      project_name = data.text.downcase.match(Message::Conditions::MESSAGE_IN_REPORT)[2]

      if project_name.present?
        project = find_project_by_name(project_name)
        if project.present?
          handle_show_by(time, project)
        else
          sender.send_message(user, 'No such project.')
          handle_message_show_projects
        end
      else
        handle_show_by time
      end
    end

    def handle_show_by(time, project = nil)
      case time
      when 'week'
        handle_report(Time.zone.now.beginning_of_week.to_date, Time.zone.today, project)
      when 'last week'
        handle_report(1.week.ago.beginning_of_week.to_date, 1.week.ago.end_of_week.to_date, project)
      when 'month'
        handle_report(Time.zone.now.beginning_of_month.to_date, Time.zone.today, project)
      when 'last month'
        handle_report(1.month.ago.beginning_of_month.to_date, 1.month.ago.end_of_month.to_date, project)
      end
    end

    def handle_report(start_date, end_date, project)
      date = suitable_start_date(start_date)

      list = (date..end_date).to_a.map do |day|
        entries = user.time_entries.where(date: day)
        entries = entries.where(project_id: project.id) if project.present?
        entries.empty? ? [day, 'No entries'] : [day, entries.map(&:description).join('; ')]
      end

      strings = []
      list.each { |day, entries| strings << "`#{day.strftime('%d.%m.%y` (%A)')}: #{entries}" }
      strings << "*Total*: #{user.total_time_for_range(start_date, end_date, project)}."
      sender.send_message(user, strings.join("\n"))
    end

    def find_project_by_name(project_name)
      Project.where(['lower(name) = ? OR lower(alias) = ?', project_name.downcase, project_name.downcase]).first
    end
  end
end
