json.array!(@appartments) do |appartment|
  json.extract! appartment, :id, :user_id, :city_id, :street_id, :lq_id, :house_id, :latitude, :longitude
  json.url appartment_url(appartment, format: :json)
end
