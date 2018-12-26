class CreateNotifications < ActiveRecord::Migration[5.0]
  def change
    create_table :notifications do |t|
      t.belongs_to :creator
      t.string :message
      t.datetime :notify_at

      t.timestamps
    end
  end
end
