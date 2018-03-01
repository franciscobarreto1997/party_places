class Venue < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  has_many :reviews, through: :bookings

  validates :name, presence: true
  validates :capacity, presence: true
  validates :price, presence: true
  validates :location, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :category, presence: true
  mount_uploader :photo, PhotoUploader
    geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch
  pg_search_scope :search,
    against: [ :name, :description, :location, :category ],
    using: {
      tsearch: { prefix: true }
    }
end
