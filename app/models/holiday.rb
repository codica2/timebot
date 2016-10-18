class Holiday < ApplicationRecord
  validates :name, :date, presence: true
  validates :date, uniqueness: true

  def self.is_holiday?(date = Date.today)
    Holiday.where(date: date).present?
  end
end
