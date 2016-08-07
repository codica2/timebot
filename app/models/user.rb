class User < ApplicationRecord

  has_many :time_entries

  validates :name, presence: true, uniqueness: true
  validates :uid, presence: true, uniqueness: true

  enum conversation_stage: [:no_conversation, :hours, :details]

  def add_time_entry(time)
    date = "#{Time.now.day}.#{Time.now.month}"
    entry = self.time_entries.find_by(date: date) || self.time_entries.build
    entry.time = time
    entry.date ||= date
    entry.save!
  end

  def add_details_for_entry(details)
    date = "#{Time.now.day}.#{Time.now.month}"
    entry = self.time_entries.find_by(date: date)
    raise 'No time entry' unless entry
    entry.details = details
    entry.save!
  end
end
