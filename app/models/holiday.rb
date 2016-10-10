class Holiday < ApplicationRecord

  validates :name, :date, presence: true

end
