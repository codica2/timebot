# frozen_string_literal: true

class Holiday < ApplicationRecord
  include Filterable

  validates :name, :date, presence: true
  validates :date, uniqueness: true

  scope :by_name, ->(term) { where('lower(name) LIKE ?', "%#{term.downcase}%") }
  scope :date_from, ->(date) { where('date >= ?', date) }
  scope :date_to, ->(date) { where('date <= ?', date) }

  def self.holiday?(date = Time.zone.today)
    Holiday.all.map { |holy| holy.date.strftime('%m-%d') }.include? date.strftime('%m-%d')
  end
end
