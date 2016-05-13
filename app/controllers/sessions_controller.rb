class SessionsController < ApplicationController
  def new
  end

  def create

  	@user = User.find_by(username: params[:username]).try(:authenticate, params[:password])
  	return render action: 'new' unless @user

  	session[:user_id] = @user.id
  	redirect_to "#"

    vendor = Vendor.find_by_email(params[:email])
    if vendor && vendor.authenticate(params[:password])
      session[:vendor_id] = vendor.id
      redirect_to root_url, notice: "Logged in!"
    else
      render :new
    end
  end

  def destroy
    session[:vendor_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end
