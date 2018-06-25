class Holiday < ApplicationRecord
  validates :name, :date, presence: true
  validates :date, uniqueness: true

  def self.is_holiday?(date = Date.today)
    Holiday.all.map { |holy| holy.date.strftime('%m-%d') }.include? date.strftime('%m-%d')
  end
end
