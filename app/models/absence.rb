class Absence < ApplicationRecord
  belongs_to :user

  enum reason: [:vacation, :illness, :other]

  validates :user_id, presence: true
  validates :reason, presence: true
  validates :date, presence: true
  validate :presence_of_comment

  def presence_of_comment
    errors.add(:comment, 'must not be nil') if self.other? && comment.nil?
  end
end
