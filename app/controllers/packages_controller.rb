class PackagesController < ApplicationController
  before_action :set_package, only: [:show, :edit, :update, :destroy]
	before_action :set_vendor, only: [:show, :create, :new, :update, :edit, :destroy]


  # GET /packages
  # GET /packages.json
  def index
    @packages = Package.all
  end

  # GET /packages/1
  # GET /packages/1.json
  def show
    @reviews = @package.ship.reviews
  end

  # GET /packages/new
  def new
    @package = Vendor.find(params[:vendor_id]).packages.build

  end

  # GET /packages/1/edit
  def edit
  end

  # POST /packages
  # POST /packages.json
  def create
    @package = @vendor.packages.build(package_params)

    respond_to do |format|
      if @package.save
        format.html { redirect_to @vendor, notice: 'Package was successfully created.' }
        format.json { render :show, status: :created, location: @package }
      else
        format.html { render :new }
        format.json { render json: @package.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /packages/1
  # PATCH/PUT /packages/1.json
  def update
    respond_to do |format|
      if @package.update(package_params)
        format.html { redirect_to vendor_package_path, notice: 'Package was successfully updated.' }
        format.json { render :show, status: :ok, location: @package }
      else
        format.html { render :edit }
        format.json { render json: @package.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /packages/1
  # DELETE /packages/1.json
  def destroy
    @package.destroy
    respond_to do |format|
      format.html { redirect_to @vendor, notice: 'Package was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_package
      @package = Package.find(params[:id])
    end

    def set_vendor
  		@vendor = Vendor.find(params[:vendor_id])
  	end


  # Never trust parameters from the scary internet, only allow the white list through.
  def package_params
    params.require(:package).permit(:itinerary, :start_date, :end_date, :duration, :price, :rooms, :people, :room_type, :ship_id, :user_id, :avatar, :vendor_id, :booked_at)
  end
end

# :ship,
