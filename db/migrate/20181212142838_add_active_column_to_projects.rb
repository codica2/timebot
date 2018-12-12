class AddActiveColumnToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :active, :boolean, default: true
  end
end
