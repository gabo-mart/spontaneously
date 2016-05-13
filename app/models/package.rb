class Package < ActiveRecord::Base
  belongs_to :user
  has_one :ship
end
