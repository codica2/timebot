class CreateEntry < BaseService
  include ServiceHelper

  attr_reader :user, :text, :messages

  def initialize(user, text, messages)
    @user     = user
    @text     = text
    @messages = messages
    super()
  end

  def call
    match_data = text.match(Message::Conditions::ENTER_TIME_REGEXP)
    if match_data
      handle_valid_timesheet_entry(match_data[1], match_data[2], match_data[3])
    else
      sender.send_message(user, 'Please add entry in following format: `PROJECT_NAME HOURS:MINUTES COMMENT`')
    end
  end

  private

  def handle_valid_timesheet_entry(project_name, time, details)
    project = find_project_by_name(project_name)

    unless project
      sender.send_message(user, 'No such project.')
      ShowProjects.call(user)
      return
    end

    message = messages['log'].sample
    user.add_time_entry(project_id: project.id, time: time, details: details)
    sender.send_message(user, message['text'], message['options'])
  end
end
