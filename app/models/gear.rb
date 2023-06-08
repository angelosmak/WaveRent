class Gear < ApplicationRecord
  belongs_to :user
  has_many :bookings
<<<<<<< HEAD
  has_many_attached :photos
=======
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :brand, :model, :size, :rate_per_day, :title, :description, :category ],
    associated_against: {
      bookings: [ :rental_start_date, :rental_end_date ]
    },
    using: {
      tsearch: { prefix: true }
    }
>>>>>>> master
end
