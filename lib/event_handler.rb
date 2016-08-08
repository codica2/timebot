class EventHandler

  ENTER_TIME_FOR_DAY_REGEXP = / *update (\d\d).(\d\d).(\d?\d?\d\d) (\w+) (\d?\d:[0-5]\d)(?: ((?:.|\n)*))?$/
  ENTER_TIME_REGEXP = / *(\w+) (\d?\d:[0-5]\d)(?: ((?:.|\n)*))?$/

  attr_reader :client, :data, :user

  def initialize(client, data)
    @client = client
    @data   = data
  end

  def handle_message
    return if data.bot_id
    puts "Handling message: #{data.text}"
    @user = User.find_by(uid: data.user)

    if message_is_request_for_project
      handle_message_show_projects
    elsif message_is_request_for_help
      handle_message_show_help
    elsif message_is_enter_time_for_day
      handle_message_time_for_other_day
    elsif message_is_over
      handle_message_over
    elsif user.is_speaking
      handle_timesheet_entry
    else
      handle_unknown_message
    end
  rescue => e
    puts e
    puts e.backtrace.join("\n\t")
    send_message('Sorry. An error occurred.')
  end

  private

  def message_is_request_for_project
    data.text.downcase == 'projects'
  end

  def message_is_request_for_help
    data.text.downcase == 'help'
  end

  def message_is_over
    data.text.downcase == 'over' && user.is_speaking
  end

  def message_is_enter_time_for_day
    data.text =~ ENTER_TIME_FOR_DAY_REGEXP && !user.is_speaking
  end

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
    message = "> `help` - prints help.\n" +
              "> `projects` - prints all available projects projects\n\n" +
              '> `update DAY.MONTH.YEAR PROJECT_NAME HOURS:MINUTES COMMENT(OPTIONAL)` - updates or creates if not exists a ' +
              "timesheet entry.\n> For example, `update 25.07.2016 Fame 8:00 a nice comment`.\n\n>" +
              "> To enter time when I ask you, write `PROJECT_NAME HOURS:MINUTES COMMENT(OPTIONAL)`\n>" +
              'For example, `Fame 8:00 some comment`'
    send_message(message)
  end

  def handle_message_over
    user.update(is_speaking: false)
    send_message('Thanks bro! Have a nice day! :smiley: ')
  end

  def handle_message_time_for_other_day
    match_data = data.text.match ENTER_TIME_FOR_DAY_REGEXP

    day          = match_data[1].to_i
    month        = match_data[2].to_i
    year         = match_data[3].to_i
    project_name = match_data[4]
    time         = match_data[5]
    details      = match_data[6]

    project = Project.find_by(name: project_name)

    unless project
      send_message('No such project.')
      handle_message_show_projects
      return
    end

    date = Date.new(year, month, day)

    user.add_time_entry(project_id: project.id, time: time, details: details, date: date)
    send_message("Set timesheet for #{date.strftime('%-d.%-m.%Y')} for #{project.name}.")
  end

  def handle_timesheet_entry
    match_data = data.text.match(ENTER_TIME_REGEXP)
    if match_data
      handle_valid_timesheet_entry(match_data[1], match_data[2], match_data[3])
    else
      handle_invalid_timesheet_entry
    end
  end

  def handle_valid_timesheet_entry(project_name, time, details)
    project = Project.find_by(name: project_name)

    unless project
      send_message('No such project.')
      handle_message_show_projects
      return
    end

    user.add_time_entry(project_id: project.id, time: time, details: details)
    send_message('Do you have any other projects to log? Write `over` to finish logging time.')
  end

  def handle_invalid_timesheet_entry
    send_message('Please add entry in following format: `1. 12:00 - A lot of useful stuff`')
  end

  def send_message(text)
    client.web_client.chat_postMessage(channel: user.uid, text: text, as_user: true)
    puts "Send message with text: #{text}"
  end
end