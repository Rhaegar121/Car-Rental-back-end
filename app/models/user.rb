class User < ApplicationRecord
  has_many :cars
  has_many :favourites

  validates :fullname, presence: true, length: { maximum: 50 }
end
