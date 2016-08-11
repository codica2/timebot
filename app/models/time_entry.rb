class TimeEntry < ApplicationRecord

  belongs_to :user
  belongs_to :project

  validates :date, presence: true
  validates :project_id, presence: true
  validates :user_id, presence: true

  def description
    if self.details.present?
      "*#{self.project.name}* - #{self.time} - #{self.details}"
    else
      "*#{self.project.name}* - #{self.time}"
    end
  end
end
