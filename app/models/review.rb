class Review < ApplicationRecord
  belongs_to :booking
  has_one :user , through: :booking

  validates :content, presence: true
  validates :rating, presence: true

end
