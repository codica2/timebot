class AddIsAbsentAndReasonToTimeEntries < ActiveRecord::Migration[5.0]
  def change
    add_column :time_entries, :is_absent, :boolean, default: false
    add_column :time_entries, :reason, :integer
  end
end
