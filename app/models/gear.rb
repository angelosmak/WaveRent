class Gear < ApplicationRecord
  belongs_to :user
  has_many :bookings

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :brand, :model, :size, :rate_per_day, :title, :description, :category ],
    associated_against: {
      bookings: [ :rental_start_date, :rental_end_date ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
