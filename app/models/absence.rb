class Absence < ApplicationRecord
  include Paginationable

  belongs_to :user

  enum reason: [:vacation, :illness, :other]

  validates :user_id, presence: true
  validates :reason, presence: true
  validates :date, presence: true
  validate :presence_of_comment

  scope :vacation, -> { where(reason: 0) }
  scope :illness, -> { where(reason: 1) }
  scope :between_dates, ->(start_date, end_date) { where(date: (start_date..end_date)) }

  def presence_of_comment
    errors.add(:comment, 'must not be nil') if self.other? && comment.nil?
  end
end
