require 'rails_helper'

feature "Stripe Checkout" do
	before do
		@package = Package.last
		@vendor = @package.vendor
		visit vendor_package_path( @package, @vendor )
	end

	it 'diplays pay now button' do
		find_button('Pay with Card')
	end

end