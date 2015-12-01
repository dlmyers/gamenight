json.array!(@users) do |user|
  json.extract! user, :id
  json.url friend_url(user, format: :json)
end
