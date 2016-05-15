class Ship < ActiveRecord::Base
	mount_uploader :avatar, AvatarUploader


	belongs_to :vendor
	has_one :package

end
