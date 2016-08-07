class AddNeedsAskingToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :conversation_stage, :integer, default: 0
  end
end
