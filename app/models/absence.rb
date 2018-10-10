# frozen_string_literal: true

class Absence < ApplicationRecord
  include Paginationable
  include Filterable

  belongs_to :user

  enum reason: %i[vacation illness other]

  validates :reason, :date, presence: true
  validate :presence_of_comment

  scope :between_dates, ->(start_date, end_date) { where(date: (start_date..end_date)) }
  scope :date_from, ->(date) { where('date >= ?', date) }
  scope :date_to, ->(date) { where('date <= ?', date) }
  scope :by_user, ->(user_id) { where(user_id: user_id) }
  scope :by_reason, ->(reason) { where(reason: reason) }

  def presence_of_comment
    errors.add(:comment, 'must not be nil') if self.other? && comment.nil?
  end
end
