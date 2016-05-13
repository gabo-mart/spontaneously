class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_vendor
  helper_method :current_user



  private

  def current_vendor
    @current_vendor ||= Vendor.find_by(id: session[:vendor_id])
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def require_logged_in
    redirect_to root_path if current_user == nil || current_vendor == nil
  end


end
