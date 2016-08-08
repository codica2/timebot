class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name

      t.timestamps
    end

    add_column :time_entries, :project_id, :integer
    add_foreign_key :time_entries, :projects
  end
end
