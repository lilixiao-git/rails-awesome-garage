class Car < ApplicationRecord
  belongs_to :owner
  has_many :reviews, dependent: :destroy
  has_many :favourites,  dependent: :destroy

  validates :brand, presence: true
  validates :model, presence: true
  validates :year, presence: true, numericality: { only_integer: true, message: "Year must be an integer" }
  validates :fuel, presence: true
end
