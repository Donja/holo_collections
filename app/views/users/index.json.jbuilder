json.array!(@users) do |user|
  json.extract! user, :id, :name, :username, :email, :password, :address, :city, :province, :city
  json.url user_url(user, format: :json)
end
