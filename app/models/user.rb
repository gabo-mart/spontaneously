class User < ActiveRecord::Base
	has_secure_password
	validates :first_name, :last_name, :username, :email, presence: true
	validates :email, uniqueness: true, format: { with: /\A[^@\s]+@([^@.\s]+\.)*[^@.\s]+\z/ }
	validates :dob, :date => { on_or_after: :birth_date_first, on_or_before: :birth_date_last }
	has_many :packages





#part of date validator

	def self.birth_date_last
		18.years.ago
	end

	def self.birth_date_first
		118.years.ago
	end

end
