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

    create_entry(match_data[1], match_data[2], match_data[3])
  end

  private

  def create_entry(project_name, time, details)
    project = find_project_by_name_like(project_name)
    project = project.count > 1 ? nil : project

    if project.nil?
      sender.send_message(user, 'No such project.')
      ShowProjects.call(user)
      return
    end

    message = messages['log'].sample
    minutes = parse_time(time)
    user.time_entries.create!(project_id: project.id,
                              time:       format_time(minutes),
                              minutes:    minutes,
                              details:    details,
                              date:       Time.zone.today)
    sender.send_message(user, message['text'], message['options'])

    if user.is_speaking
      sender.send_message(user, 'Do you have any other projects to log? Write `no` to finish logging time.')
    end
  end
end
