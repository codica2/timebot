# frozen_string_literal: true

class Team < ApplicationRecord
  include Filterable

  has_many :projects, dependent: :nullify
  has_many :users, dependent: :nullify

  validates :name, presence: true

  scope :by_project, ->(project_id) { Team.joins(:projects).where('projects.id = ?', project_id) }
  scope :by_user, ->(user_id) { Team.joins(:users).where('users.id = ?', user_id) }
end
