json.array!(@clubs) do |club|
  json.extract! club, :id, :index, :show
  json.url club_url(club, format: :json)
end
