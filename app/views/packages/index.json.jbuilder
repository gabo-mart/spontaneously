json.array!(@packages) do |package|
  json.extract! package, :id, :itinerary, :ship, :dates, :duration, :price, :rooms, :people, :room_type, :user_id
  json.url package_url(package, format: :json)
end
