json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :institute, :profession, :statistics
  json.url user_url(user, format: :json)
end
