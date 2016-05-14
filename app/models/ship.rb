class Ship < ActiveRecord::Base
	belongs_to :vendor
	has_one :package
	
end
