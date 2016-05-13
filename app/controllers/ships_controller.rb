class ShipsController < ApplicationController

	def index
		@ships = Ship.find_by(vendor_id: pramams[:vendor_id])
	end

end