class RemoveIsAbsentAndReasonFromTimeEntries < ActiveRecord::Migration[5.0]
  def change
    remove_column :time_entries, :is_absent
    remove_column :time_entries, :reason
  end
end
