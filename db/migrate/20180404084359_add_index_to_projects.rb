class AddIndexToProjects < ActiveRecord::Migration[5.0]
  def change
    add_index :projects, :name, unique: true
  end
end
