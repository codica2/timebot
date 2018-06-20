class AddTrelloLabelsToTimeEntries < ActiveRecord::Migration[5.0]
  def change
    add_column :time_entries, :trello_labels, :text, array: true, default: []
  end
end
