class AddLastMessageToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column  :users, :last_message, :string
  end
end
