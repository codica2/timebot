# frozen_string_literal: true
module Message
  module Handlers
    private

    def handle_message_show_projects
      projects = Project.order(:id)
      text = projects.empty? ? 'No projects added yet.' : projects.map(&:to_s).join("\n")
      sender.send_message(user, text)
    end

    def handle_unknown_message
      text = 'I don\'t understand you.'
      options = {
        attachments: [title: '',
                      image_url: 'http://bestanimations.com/Sci-Fi/StarWars/R2D2/r2d2-c3po-animated-gif-3.gif']
      }
      sender.send_message(user, text, options)
    end

    def handle_message_show_help
      message = File.open(Rails.root.join('public', 'messages', 'help.txt').to_s, 'r').read
      sender.send_message(user, message)
    end

    def handle_message_over
      user.update(is_speaking: false)
      sender.send_message(user, 'Thanks bro! Have a nice day! :smiley: ')
    end

    def handle_message_time_for_other_day
      match_data = data.text.match Message::Conditions::ENTER_TIME_FOR_DAY_REGEXP

      day          = match_data[1].to_i
      month        = match_data[2].to_i
      year         = match_data[3].to_i < 2000 ? match_data[3].to_i + 2000 : match_data[3].to_i
      project_name = match_data[4]
      time         = match_data[5]
      details      = match_data[6]

      project = find_project_by_name(project_name)

      unless project
        sender.send_message(user, 'No such project.')
        handle_message_show_projects
        return
      end

      date = Date.new(year, month, day)

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

      user.add_time_entry(project_id: project.id, time: time, details: details)
      sender.send_message(user, 'Do you have any other projects to log? Write `no` to finish logging time.')
    end

    def handle_invalid_timesheet_entry
      sender.send_message(user, 'Please add entry in following format: `PROJECT_NAME HOURS:MINUTES COMMENT(OPTIONAL)`')
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
      start_date = build_date(match_data[2], match_data[3], match_data[4])
      end_date   = build_date(match_data[5], match_data[6], match_data[7])

      if TimeEntry.reasons.keys.include?(reason) && start_date <= end_date
        user.set_absence(reason, start_date, end_date)
        text = "Set *#{reason.capitalize}* from #{start_date.strftime('%d.%m.%y')} to #{end_date.strftime('%d.%m.%y')}"
        sender.send_message(user, text)
      else
        sender.send_message(user, 'Invalid reason or invalid dates.')
      end
    end

    def handle_ask_me
      sender.send_message(user, 'Hey mate, what did you do today?')
      user.update(is_speaking: true)
    end

    def handle_reports
      time         = data.text.match(Message::Conditions::MESSAGE_IN_REPORT)[1]
      project_name = data.text.match(Message::Conditions::MESSAGE_IN_REPORT)[2]

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
