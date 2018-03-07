class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :description
      t.integer :team_lead_id
      t.integer :project_manager_id

      t.timestamps
    end
  end
end
