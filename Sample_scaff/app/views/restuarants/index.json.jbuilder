json.array!(@restuarants) do |restuarant|
  json.extract! restuarant, :id, :name
  json.url restuarant_url(restuarant, format: :json)
end
