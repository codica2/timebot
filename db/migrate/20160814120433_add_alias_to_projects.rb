class AddAliasToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :alias, :string
  end
end
