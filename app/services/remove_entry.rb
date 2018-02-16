class RemoveEntry < BaseService
  attr_reader :user, :time_entry_id

  def initialize(user, time_entry_id)
    @user = user
    @time_entry_id = time_entry_id
    super()
  end

  def call
    last_entry = TimeEntry.where(user_id: user.id).last
    time_entry_id[/\d+/].present? ? TimeEntry.find(time_entry_id).destroy
                                  : last_entry.destroy

    time_entry_id[/\d+/].present? ? sender.send_message(user, "Entry with ID #{time_entry_id} successfully removed.")
                                  : sender.send_message(user, 'Your last entry (' \
                                                              "#{last_entry.description}) was successfully removed.")
  end
end
