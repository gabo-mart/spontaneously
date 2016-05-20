class Ship < ActiveRecord::Base
	mount_uploader :avatar, AvatarUploader

	serialize :activities
	serialize :dining
	belongs_to :vendor
	has_many :package


	ACTIVITIES = ["Casino",
		"Acupuncture",
		"Spa",
		"Movie Theater",
		"Bingo",
		"Games",
		"Volleyball",
		"Kid's Camp",
		"Live Music",
		"Stage Shows",
		"Basketball",
		"Karaoke",
		"Skycourse",
		"Mini Golf",
		"Waterslide",
		"Nightclub"]
	end
