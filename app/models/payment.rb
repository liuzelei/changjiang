class Payment < ActiveRecord::Base
  include ModelConcerns::Sequenable
  sequence :PY
  
  belongs_to :order

  validates :amount, presence: true
end