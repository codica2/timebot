class TimeEntry < ApplicationRecord

  belongs_to :user

  validates :date, presence: true
  validates :project_id, presence: true
  validates :user_id, presence: true
end
