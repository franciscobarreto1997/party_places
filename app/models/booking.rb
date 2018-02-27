class Booking < ApplicationRecord
  belongs_to :user

  belongs_to :venue
  has_many :reviews, dependent: :delete_all

  validates :date, presence: true
end
