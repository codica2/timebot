class CreateTimeEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :time_entries do |t|
      t.integer :user_id
      t.date :date
      t.string :time
      t.integer :minutes
      t.string :details

      t.timestamps
    end

    add_foreign_key :time_entries, :users
  end
end
