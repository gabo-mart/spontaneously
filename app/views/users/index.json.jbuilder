json.array!(@users) do |user|
  json.extract! user, :id, :username, :first_name, :last_name, :dob, :country, :address1, :address2, :region, :postal_code, :tel, :email, :password_digest
  json.url user_url(user, format: :json)
end
