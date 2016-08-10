module Message::Handlers

  private

  def handle_message_show_projects
    projects = Project.all
    text = if projects.empty?
             "No projects added yet."
           else
             projects.map { |project| "#{project.id}. #{project.name}" }.join("\n")
           end
    send_message(text)
  end

  def handle_unknown_message
    send_message('I don\'t understand you.')
  end

  def handle_message_show_help
    message = "> `help` - prints help.\n\n" +
              "> `projects` - prints all available projects projects\n\n" +
              "> `update DAY.MONTH.YEAR PROJECT_NAME HOURS:MINUTES COMMENT(OPTIONAL)` - updates or creates if doesn't " +
              "exist a timesheet entry.\n> For example, `update 25.07.2016 fame and partners 8:00 a nice comment`.\n\n" +
              "> To enter time when I ask you, write `PROJECT_NAME HOURS:MINUTES COMMENT(OPTIONAL)`\n>" +
              'For example, `fame and partners 8:00 some comment`'
    send_message(message)
  end

  def handle_message_over
    user.update(is_speaking: false)
    send_message('Thanks bro! Have a nice day! :smiley: ')
  end

  def handle_message_time_for_other_day
    match_data = data.text.match Message::Conditions::ENTER_TIME_FOR_DAY_REGEXP

    day          = match_data[1].to_i
    month        = match_data[2].to_i
    year         = match_data[3].to_i < 2000 ? match_data[3].to_i + 2000 : match_data[3]
    project_name = match_data[4]
    time         = match_data[5]
    details      = match_data[6]

    project = find_project_by_name(project_name)

    unless project
      send_message('No such project.')
      handle_message_show_projects
      return
    end

    date = Date.new(year, month, day)

    user.add_time_entry(project_id: project.id, time: time, details: details, date: date)

    message = "Set timesheet for #{date.strftime('%-d.%-m.%Y')} for #{project.name}: #{time}."
    if details
      message += " Details: #{details || 'none'}."
    end

    send_message(message)
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
      send_message('No such project.')
      handle_message_show_projects
      return
    end

    user.add_time_entry(project_id: project.id, time: time, details: details)
    send_message('Do you have any other projects to log? Write `finish` to finish logging time.')
  end

  def handle_invalid_timesheet_entry
    send_message('Please add entry in following format: `PROJECT_NAME HOURS:MINUTES COMMENT(OPTIONAL)`')
  end

  def find_project_by_name(project_name)
    Project.where(['lower(name) = ?', project_name]).first
  end
end