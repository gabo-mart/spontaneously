class Package < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader

  belongs_to :vendor
  belongs_to :user
  belongs_to :ship
end
