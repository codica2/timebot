# frozen_string_literal: true
class TimeEntry < ApplicationRecord
  belongs_to :user
  belongs_to :project

  validates :date, presence: true
  validates :user_id, presence: true
  validate :presence_of_project_id

  enum reason: [:vacation, :illness]

  scope :today, -> { where(date: Time.zone.now.to_date) }
  scope :yesterday, -> { where(date: (1.day.ago.beginning_of_day..1.day.ago.end_of_day)) }
  scope :current_week, -> { where(date: (Time.zone.now.beginning_of_week..Time.zone.now.to_date)) }
  scope :last_week, -> { where(date: (1.week.ago.beginning_of_week.to_date..1.week.ago.end_of_week.to_date)) }
  scope :current_month, -> { where(date: (Time.zone.now.beginning_of_month.to_date..Time.zone.now.to_date)) }

  def description
    if is_absent
      reason.capitalize
    elsif details.present?
      "*#{project.name}* - #{time} - #{details}"
    else
      "*#{project.name}* - #{time}"
    end
  end

  private

  def presence_of_project_id
    if project_id.nil? && !is_absent && reason.nil?
      errors.add(:project_id, 'must not be nil')
    elsif project_id.nil? && is_absent && reason.nil?
      errors.add(:reason, 'must not be nil')
    end
  end
end
