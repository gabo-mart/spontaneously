class ShipsController < ApplicationController

	def index
		@ships = Ship.find_by(vendor_id: pramams[:vendor_id])
	end

	def new
		@ship = Ship.new
	end

	def create
		@ship = @vendor.ships.new(ship_params)

    respond_to do |format|
      if @ship.save
        format.html { redirect_to @ship, notice: 'Department was successfully created.' }
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
      @ship = @vendor.ship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ship_params
      params.require(:ship).permit(:name, :tonnage, :length, :max_beam, :type, :activities, :other, :vendor_id)
    end
    
end