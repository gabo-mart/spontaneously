class ChargesController < ApplicationController
	before_action :set_package, only: [:create]

	def new
	end

	def create
		p params
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
			@package.user_id = current_user.id
	end

	private

	def set_package
		@package = Package.find(:package_id)
	end

end
