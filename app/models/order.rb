class Order < ActiveRecord::Base
  include ModelConcerns::Sequenable

  sequence :SO
  belongs_to :car
  has_many :order_accessories
  has_many :accessories, through: :order_accessories
  has_many :payments

  validates :status, presence: true
  validates :price, presence: true
  validates :customer_name, presence: true

  accepts_nested_attributes_for :payments, allow_destroy: true
end