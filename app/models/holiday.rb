class Holiday < ApplicationRecord
  validates :name, :date, presence: true
  validates :date, uniqueness: true

  scope :between_dates, ->(start_date, end_date) { where(date: (start_date..end_date)) }

  def self.is_holiday?(date = Date.today)
    Holiday.all.map { |holy| holy.date.strftime('%m-%d') }.include? date.strftime('%m-%d')
  end
end
