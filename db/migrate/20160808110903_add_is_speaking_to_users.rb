class AddIsSpeakingToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column    :users, :is_speaking, :boolean, default: false
    remove_column :users, :conversation_stage
  end
end
