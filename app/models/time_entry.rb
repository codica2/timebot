# frozen_string_literal: true
class TimeEntry < ApplicationRecord
  belongs_to :user
  belongs_to :project

  validates :date, presence: true
  validates :user_id, presence: true
  validates :project_id, presence: true

  scope :today, -> { where(date: Time.zone.now.to_date) }
  scope :yesterday, -> { where(date: (1.day.ago.beginning_of_day..1.day.ago.end_of_day)) }
  scope :current_week, -> { where(date: (Time.zone.now.beginning_of_week..Time.zone.now.to_date)) }
  scope :last_week, -> { where(date: (1.week.ago.beginning_of_week.to_date..1.week.ago.end_of_week.to_date)) }
  scope :current_month, -> { where(date: (Time.zone.now.beginning_of_month.to_date..Time.zone.now.to_date)) }
  scope :in_interval, -> (start_date, end_date) { where(['date BETWEEN ? AND ?', start_date, end_date]) }

  def description
    details.present? ? "*#{project.name}* - #{time} - #{details}" : "*#{project.name}* - #{time}"
  end
end
