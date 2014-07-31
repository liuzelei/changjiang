json.array!(@order_accessories) do |order_accessory|
  json.extract! order_accessory, :id, :accessory_id, :count
  json.url order_accessory_url(order_accessory, format: :json)
end
