# frozen_string_literal: true

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

    edit_entry(match_data[2], match_data[3], match_data[4], match_data[5], match_data[1])
  end

  private

  def edit_entry(id, project_name, time, details, unparsed_new_date)
    time_entry = TimeEntry.find(id)
    if time_entry.user != user
      sender.send_message(user, "This time entry isn't yours.")
      return
    end

    project = find_project_by_name(project_name)

    new_date = time_entry.date
    if unparsed_new_date.present?
      date_match = unparsed_new_date.match(/(\d+)\.(\d+)\.?(\d+)?/)
      new_date = Date.new((date_match[3] || Date.today.year).to_i, date_match[2].to_i, date_match[1].to_i)
    end

    time_entry.update(time: time
                      project_id: project.id,
                      details: details,
                      date: new_date)

    sender.send_message(user, 'The time entry was successfully updated.')
  rescue ActiveRecord::RecordNotFound
    sender.send_message(user, "The time entry with ID *#{id}* was not found.")
  end
end
