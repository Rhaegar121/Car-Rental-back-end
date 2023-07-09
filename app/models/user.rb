class User < ApplicationRecord
  has_secure_password
  has_many :cars
  has_many :favourites

  validates :fullname, presence: true, length: { maximum: 50 }
  validates :email, presence: true
end
