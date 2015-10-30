json.array!(@users) do |user|
  json.extract! user, :id, :username, :role_id
  json.url user_url(user, format: :json)
end
