# frozen_string_literal: true
class User < ApplicationRecord
  has_many :time_entries, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :uid, presence: true, uniqueness: true

  scope :active, -> { where(is_active: true) }

  def add_time_entry(project_id:, time:, details:, date: Time.zone.today)
    raise 'Invalid date' if date > Time.zone.today
    entry = time_entries.find_by(project_id: project_id, date: date) ||
            time_entries.build(project_id: project_id, date: date)
    entry.minutes = parse_time(time)
    entry.time = format('%2d:%02d', entry.minutes / 60, entry.minutes % 60)
    entry.details = details
    entry.save!
  end

  def total_time_for_range(start_date, end_date, project = nil)
    total = time_entries.where(['date BETWEEN ? AND ?', start_date, end_date])
    total = total.where(project_id: project.id) if project.present?
    total = total.sum(:minutes)
    hours = total / 60
    minutes = total % 60
    "#{hours} hours #{minutes} minutes"
  end

  def set_absence(reason, start_date, end_date)
    (start_date..end_date).to_a.each do |date|
      next if date.saturday? || date.sunday?
      time_entries.create!(is_absent: true, reason: reason, date: date)
    end
  end

  private

  def parse_time(time)
    match_data = time.match(/^(\d?\d):([0-5]\d)$/)
    match_data[1].to_i * 60 + match_data[2].to_i
  end
end
