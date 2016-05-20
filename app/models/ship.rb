class Ship < ActiveRecord::Base
	mount_uploader :avatar, AvatarUploader

	serialize :activities
	serialize :dining
	belongs_to :vendor
	has_many :package

end
