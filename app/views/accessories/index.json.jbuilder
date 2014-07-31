json.array!(@accessories) do |accessory|
  json.extract! accessory, :id, :name, :count
  json.url accessory_url(accessory, format: :json)
end
