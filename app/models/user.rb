# frozen_string_literal: true
class User < ApplicationRecord
  has_many :time_entries, dependent: :destroy
  has_many :absences, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :uid, presence: true, uniqueness: true

  scope :active, -> { where(is_active: true) }

  def total_time_for_range(start_date, end_date, project = nil)
    total = time_entries.where(['date BETWEEN ? AND ?', start_date, end_date])
    total = total.where(project_id: project.id) if project.present?
    total = total.sum(:minutes)
    hours = total / 60
    minutes = total % 60
    "#{hours} hours #{minutes} minutes"
  end

  def add_absence(reason, date, comment = nil)
    absence = absences.find_by(date: date) || absences.build(date: date)
    absence.reason = reason
    absence.comment = comment
    absence.save
  end

  def is_absent?(date)
    absences.find_by(date: date).present?
  end

  private

  def parse_time(time)
    match_data = time.match(/^(\d?\d):([0-5]\d)$/)
    match_data[1].to_i * 60 + match_data[2].to_i
  end
end
