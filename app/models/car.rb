class Car < ApplicationRecord
  belongs_to :make
  has_many :car_part
  has_many :parts, through: :car_part
  validates_associated :parts

end
