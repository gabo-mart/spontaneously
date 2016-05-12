class User < ActiveRecord::Base
	has_secure_password
	validates :first_name, :last_name, :username, :dob, :country, :address1, :region, :tel, :email, :password_confirmation, presence: true
end
