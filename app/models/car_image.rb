class CarImage < ActiveRecord::Base
  belongs_to :car
  belongs_to :image
end
