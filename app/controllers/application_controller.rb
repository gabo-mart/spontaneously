class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

<<<<<<< HEAD
  def current_user
  	@current_user ||= User.find_by(id: session[:user_id])
  end

  def require_logged_in
  	redirect_to root_path if current_user == nil
  end

=======
  private

  def current_vendor
    Vendor.where(id: session[:vendor_id]).first
  end

  helper_method :current_vendor
>>>>>>> db094e4d3c93a949879614c8e42ed555b7f939d5
end
