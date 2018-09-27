class Team < ApplicationRecord
  has_many :projects
  has_many :users

  validates :name, presence: true
end
