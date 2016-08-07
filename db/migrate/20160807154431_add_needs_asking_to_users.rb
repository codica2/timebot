class AddNeedsAskingToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :needs_asking, :boolean, default: false
  end
end
