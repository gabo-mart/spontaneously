class ChargesController < ApplicationController
	before_action :set_package, only: [:create]
  # helper_method :current_user

	def new
	end

	def create
		p params

		@package.update_attributes(user_id: params[:user_id], booked_at: Date.current)
		
	  # Amount in cents
	  @amount = 500

	  customer = Stripe::Customer.create(
	  	:email => params[:stripeEmail],
	  	:source  => params[:stripeToken]
	  	)

	  charge = Stripe::Charge.create(
	  	:customer    => customer.id,
	  	:amount      => @amount,
	  	:description => 'Rails Stripe customer',
	  	:currency    => 'usd'
	  	)
	  	
		rescue Stripe::CardError => e
			flash[:error] = e.message
			redirect_to new_charge_path
	end

	private

	def set_package
		@package = Package.find(params[:package_id])
	end


end
