class Ship < ActiveRecord::Base
	mount_uploader :avatar, AvatarUploader

	serialize :activities
	serialize :dining
	belongs_to :vendor
	has_many :package
	has_many :review


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


		DINING = ["Sushi",
			"Steakhouse",
			"BBQ",
			"Asian Kitchen",
			"Deli",
			"Pasta Bar",
			"Salad Bar",
			"Chef's Table",
			"Burger Joint",
			"Kid's Menu",
			"Breakfast Grill",
			"Sports Bar",
			"Rum Bar",
			"Tequila Bar",
			"Martini Bar",
			"Vineyard"]
	end
