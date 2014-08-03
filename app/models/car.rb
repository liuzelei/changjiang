class Car < ActiveRecord::Base
  validates :vin, presence: true, uniqueness: true
  validates :color, presence: true
  validates :price, presence: true
  validates :cc, presence: true
  validates :model, presence: true
end
