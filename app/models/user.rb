class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookings
  has_many :gears
  has_one_attached :photo
  # validates :first_name, :last_name, :address, :email, :phone, presence: true
  # validates :email, format: { with: /@/ }, uniqueness: true
  # validates :phone, format: { with: /\d+/}
  devise :database_authenticatable, :registerable,
      :recoverable, :rememberable, :validatable
end
