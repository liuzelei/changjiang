json.array!(@payments) do |payment|
  json.extract! payment, :id, :order_id, :amount, :paid_at, :type, :card_no, :bank, :no
  json.url payment_url(payment, format: :json)
end
