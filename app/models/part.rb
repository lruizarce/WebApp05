class Part < ApplicationRecord
  has_many :car_parts
  has_many :cars, through: :car_parts
  validates :name, presence: true
  validates :name, format: { with: /\A[a-zA-z]+\z/, message: "only allows letters" }
end
