# frozen_string_literal: true

class Holiday < ApplicationRecord

  include Filterable

  validates :name, :date, presence: true
  validates :date, uniqueness: true

  scope :between_dates, ->(start_date, end_date) { where(date: (start_date..end_date)) }
  scope :by_name, ->(term) { where('lower(name) LIKE ?', "%#{term.downcase}%") }
  scope :date_from, ->(date) { where('date >= ?', date) }
  scope :date_to, ->(date) { where('date <= ?', date) }


  def self.is_holiday?(date = Date.today)
    Holiday.all.map { |holy| holy.date.strftime('%m-%d') }.include? date.strftime('%m-%d')
  end
end
