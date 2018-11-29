class RemoveTeamLeadAndManagerFromTeam < ActiveRecord::Migration[5.0]
  def change
    remove_column :teams, :team_lead_id, :interger
    remove_column :teams, :project_manager_id, :interger
  end
end
