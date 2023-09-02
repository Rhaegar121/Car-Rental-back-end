class Car < ApplicationRecord
  belongs_to :user
  has_many :favourites, dependent: :destroy

  validates :name, presence: true, length: { maximum: 50 }
  validates :description, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :ratings, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  validates :image, presence: true
end
