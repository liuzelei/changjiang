class Car < ActiveRecord::Base
  validates :vin, presence: true, uniqueness: true
  validates :color, presence: true
  validates :price, presence: true
  validates :cc, presence: true
  validates :model, presence: true

  has_many :car_images
  has_many :images, through: :car_images

  accepts_nested_attributes_for :images, allow_destroy: true
end