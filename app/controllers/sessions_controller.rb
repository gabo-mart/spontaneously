class SessionsController < ApplicationController
  before_action :authenticate_vendor, only: [:new_vendor]

  def new_user
    redirect_to root_path if current_user
  end

  def new_vendor
  end

  def authenticate_vendor
    redirect_to root_path if current_vendor
  end

  def create_user
    	@user = User.find_by(username: params[:username]).try(:authenticate, params[:password])
    	return render action: 'new_user', notice: "Invalid Credentials" unless @user

    	session[:user_id] = @user.id
    	redirect_to :back
  end

  def create_vendor
    @vendor = Vendor.find_by_email(params[:email])
    if @vendor && @vendor.authenticate(params[:password])
      session[:vendor_id] = @vendor.id
      redirect_to vendor_path(@vendor), notice: "Logged in!"
    else
      render :new_vendor
      flash[:notice] = "Invalid Credentials"
    end
  end

  def destroy
    if current_vendor
      redirect_to root_url, notice: "Bye 😔 👋!!"
      session[:vendor_id] = nil
    else
      session[:user_id] = nil
      redirect_to root_url, notice: "Bye 😔 👋!!"
    end
  end

end
