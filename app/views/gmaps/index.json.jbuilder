
json.array!(@gmaps) do |gmap|
  json.extract! gmap, :id, :latitude, :longitude, :address, :description, :title
  json.url gmap_url(gmap, format: :json)
end
