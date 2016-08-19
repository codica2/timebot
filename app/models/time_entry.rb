class TimeEntry < ApplicationRecord

  belongs_to :user
  belongs_to :project

  validates :date, presence: true
  validates :project_id, presence: true
  validates :user_id, presence: true

  scope :today, ->{ where(date: Time.now.to_date) }
  scope :yesterday, ->{ where(date: (1.day.ago.beginning_of_day..1.day.ago.end_of_day)) }
  scope :current_week, -> { where(date: (Time.now.beginning_of_week..Time.now.to_date)) }
  scope :last_week, ->{ where(date: (1.week.ago.beginning_of_week.to_date..1.week.ago.end_of_week.to_date)) }
  scope :current_month, ->{ where(date: (Time.now.beginning_of_month.to_date..Time.now.to_date)) }

  def description
    if self.details.present?
      "*#{self.project.name}* - #{self.time} - #{self.details}"
    else
      "*#{self.project.name}* - #{self.time}"
    end
  end
end
