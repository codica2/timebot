class EditEntry < BaseService
  include ServiceHelper

  attr_reader :user, :text

  def initialize(user, text)
    @user = user
    @text = text
    super()
  end

  def call
    match_data = text.match(Message::Conditions::EDIT_ENTRY_REGEXP)

    edit_entry(match_data[1], match_data[2], match_data[3], match_data[4])
  end

  private

  def edit_entry(id, project_name, time, details)
    time_entry = TimeEntry.find(id)

    minutes = parse_time(time)

    project = find_project_by_name(project_name)

    time_entry.update(time: format_time(minutes), minutes: minutes, project_id: project.id, details: details)

    sender.send_message(user, 'The time entry was successfully updated.')
  rescue ActiveRecord::RecordNotFound
    sender.send_message(user, "The time entry with ID *#{id}* was not found.")
  end
end
