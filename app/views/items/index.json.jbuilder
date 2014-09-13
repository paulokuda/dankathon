json.array!(@items) do |item|
  json.extract! item, :id, :latitude, :longitude, :address, :description, :title, :phone, :price, :condition, :sold
  json.url item_url(item, format: :json)
end
