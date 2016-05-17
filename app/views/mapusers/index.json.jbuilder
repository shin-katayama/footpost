json.array!(@mapusers) do |mapuser|
  json.extract! mapuser, :id, :title, :description, :address, :latitude, :longitude
  json.url mapuser_url(mapuser, format: :json)
end
