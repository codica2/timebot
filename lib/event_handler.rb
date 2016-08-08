class EventHandler

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
    data.text.downcase == 'show me the projects'
  end

  def message_is_request_for_help
    data.text.downcase == 'i need help'
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
    send_message('Type `show me the projects` to get projects\' list.')
  end

  def handle_timesheet_entry
    match_data = data.text.match(/(\d+)\. (\d?\d:\d\d) - ((?:.|\n)*)/)
    if match_data
      handle_valid_timesheet_entry(match_data[1], match_data[2], match_data[3])
    else
      handle_invalid_timesheet_entry
    end
  end

  def handle_valid_timesheet_entry(project_id, hours, details)
    project = Project.find_by(id: project_id)

    unless project
      send_message('No such project.')
      handle_message_show_projects
      return
    end

    user.add_time_entry(project_id, hours, details)
    user.update(is_speaking: false)

    send_message('Thanks bro! Have a nice day! :smiley: ')
  end

  def handle_invalid_timesheet_entry
    send_message('Please add entry in following format: `1. 12:00 - A lot of useful stuff`')
  end

  def send_message(text)
    client.web_client.chat_postMessage(channel: user.uid, text: text, as_user: true)
    puts "Send message with text: #{text}"
  end
end