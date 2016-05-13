class SessionsController < ApplicationController
  def new
  	if current_user
  		redirect_to edit_user_path(current_user)
  	end
  end

  def create
  	@user = User.find_by(username: params[:username]).try(:authenticate, params[:password])
  	return render action: 'new' unless @user

  	session[:user_id] = @user.id
  	redirect_to edit_user_path(User.first)
  end


  def destroy
  	session[:user_id] = nil
   	redirect_to root_path
  end

end
