class User < ApplicationRecord

  has_many :time_entries, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :uid, presence: true, uniqueness: true

  scope :active, -> { where(is_active: true) }

  def add_time_entry(project_id:, time:, details:, date: Date.today)
    raise 'Invalid date' if date > Date.today
    entry = self.time_entries.find_by(project_id: project_id, date: date) || self.time_entries.build(project_id: project_id, date: date)
    entry.minutes = parse_time(time)
    entry.time = '%2d:%02d' % entry.minutes.divmod(60)
    entry.details = details
    entry.save!
  end

  def total_time_for_range(start_date, end_date)
    total = self.time_entries.where(['date BETWEEN ? AND ?', start_date, end_date]).sum(:minutes)
    hours = total / 60
    minutes = total % 60
    "#{hours} hours #{minutes} minutes"
  end

  def set_absence(reason, start_date, end_date)
    (start_date..end_date).to_a.each do |date|
      next if date.saturday? || date.sunday?
      self.time_entries.create!(is_absent: true, reason: reason, date: date)
    end
  end

  private

  def parse_time(time)
    match_data = time.match(/^(\d?\d):([0-5]\d)$/)
    match_data[1].to_i * 60 + match_data[2].to_i
  end
end
