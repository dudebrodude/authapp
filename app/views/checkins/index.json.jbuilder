json.array!(@checkins) do |checkin|
  json.extract! checkin, :id, :title
  json.url checkin_url(checkin, format: :json)
end
