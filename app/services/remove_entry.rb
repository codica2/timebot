# frozen_string_literal: true

class RemoveEntry < BaseService
  include Message::Conditions
  attr_reader :user, :time_entry_id

  def initialize(user, text)
    @user = user
    @time_entry_id = text.match(REMOVE_ENTRY_REGEXP)[0][/\d+/]
    super()
  end

  def call
    last_entry = TimeEntry.where(user_id: user.id).last

    if id_given? && TimeEntry.find(time_entry_id).user != user
      sender.send_message(user, "This time entry isn't yours.")
      return
    end

    id_given? ? TimeEntry.find(time_entry_id).destroy : last_entry.destroy

    id_given? ? sender.send_message(user, "Entry with ID #{time_entry_id} successfully removed.")
              : sender.send_message(user, "Your last entry (#{last_entry.description}) was successfully removed.")
  end

  def id_given?
    time_entry_id.present?
  end
end
