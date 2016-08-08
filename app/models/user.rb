class User < ApplicationRecord

  has_many :time_entries

  validates :name, presence: true, uniqueness: true
  validates :uid, presence: true, uniqueness: true

  def add_time_entry(project_id, time, details)
    date_uid = "#{Time.now.day}.#{Time.now.month}"

    entry = self.time_entries.find_by(project_id: project_id, date: date_uid) || self.entry.build(project_id: project_id, date: date_uid)
    entry.time    = time
    entry.details = details
    entry.save!
  end

end
