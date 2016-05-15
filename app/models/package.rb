class Package < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  
  belongs_to :user
  has_one :ship
end
