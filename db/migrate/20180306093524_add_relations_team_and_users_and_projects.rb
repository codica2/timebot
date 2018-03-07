class AddRelationsTeamAndUsersAndProjects < ActiveRecord::Migration[5.0]
  def up
    add_column :projects, :team_id, :integer
    add_column :users, :team_id, :integer
  end

  def down
    remove_column :projects, :team_id, :integer
    remove_column :users, :team_id, :integer
  end
end
