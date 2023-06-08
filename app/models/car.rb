class Car < ApplicationRecord
  belongs_to :user
  has_many :favourites

  validates :name, presence: true, length: { maximum: 50 }
  validates :description, presence: true, length: { maximum: 300 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :rating, presence: true, numericality: { greater_than_or_equal_to: 0 }, length: {minimum:0, maximum:9}
  validates :image, presence: true
end
