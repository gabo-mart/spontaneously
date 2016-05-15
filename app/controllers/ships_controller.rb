class ShipsController < ApplicationController
	before_action :set_vendor, only: [:create]
	before_action :set_ship, only: [:show]
#
	def index
		@ships = Ship.find_by(vendor_id: params[:vendor_id])
	end

	def new
		@ship = Vendor.find_by(params[:vendor_id]).ships.build
	end

	def show
	end

	def create
		@ship = @vendor.ships.build(ship_params)

		respond_to do |format|
			if @ship.save
				format.html { redirect_to @vendor, notice: 'Ship was successfully created.' }
				format.json { render :show, status: :created, location: @ship }
			else
				format.html { render :new }
				format.json { render json: @ship.errors, status: :unprocessable_entity }
			end
		end
	end

	def update
		respond_to do |format|
			if @ship.update(ship_params)
				format.html { redirect_to @ship, notice: "#{@ship.name} was successfully updated." }
				format.json { render :show, status: :ok, location: @ship }
			else
				format.html { render :edit }
				format.json { render json: @ship.errors, status: :unprocessable_entity }
			end
		end
	end


	private

	# Use callbacks to share common setup or constraints between actions.
	def set_ship
		@ship = Vendor.find_by(params[:vendor_id]).ships.find(params[:id])
	end

	def set_vendor
		@vendor = Vendor.find(params[:vendor_id])
		puts @vendor
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def ship_params
		params.require(:ship).permit(:name, :tonnage, :length, :max_beam, :length_in_feet, :guest_capacity, :onboard_crew, :description, :other, :vendor_id)
	end

end
