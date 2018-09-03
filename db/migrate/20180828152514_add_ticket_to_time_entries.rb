class AddTicketToTimeEntries < ActiveRecord::Migration[5.0]
  def change
    add_column  :time_entries, :ticket, :string
  end
end
