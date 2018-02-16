class RemoveEntry < BaseService
  attr_reader :user, :time_entry_id

  def initialize(user, time_entry_id)
    @user = user
    @time_entry_id = time_entry_id
    super()
  end

  def call
    time_entry_id[/\d+/].present? ? TimeEntry.find(time_entry_id).destroy
                                  : TimeEntry.where(user_id: user.id).last.destroy

    sender.send_message(user, "Entry with ID #{time_entry_id} successfully removed.")
  end
end
