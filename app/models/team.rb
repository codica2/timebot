class Team < ApplicationRecord
  has_many :projects
  has_many :users
  belongs_to :team_lead, class_name: 'User'
  belongs_to :project_manager, class_name: 'User'
end
