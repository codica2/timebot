class RemoveEntry < BaseService
  attr_reader :user, :time_entry_id

  def initialize(user, time_entry_id)
    @user = user
    @time_entry_id = time_entry_id
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
    time_entry_id[/\d+/].present?
  end
end
