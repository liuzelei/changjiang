class OrderAccessory < ActiveRecord::Base
  belongs_to :order
  belongs_to :accessory
end