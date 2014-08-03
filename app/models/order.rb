class Order < ActiveRecord::Base
  include ModelConcerns::Sequenable

  sequence :SO
  belongs_to :car
  has_many :order_accessories
  has_many :accessories, through: :order_accessories

  validates :status, presence: true
  validates :price, presence: true
  validates :customer_name, presence: true
end