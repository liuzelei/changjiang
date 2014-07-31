json.array!(@cars) do |car|
  json.extract! car, :id, :price, :vin, :color, :model, :cc
  json.url car_url(car, format: :json)
end
