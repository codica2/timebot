class Notification < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :user_notifications, dependent: :destroy
  has_many :users, through: :user_notifications
end
