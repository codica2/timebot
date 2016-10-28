class CreateAbsences < ActiveRecord::Migration[5.0]
  def change
    create_table :absences do |t|
      t.integer :user_id
      t.date :date
      t.integer :reason
      t.string :comment

      t.timestamps
    end

    add_foreign_key :absences, :users
  end
end
