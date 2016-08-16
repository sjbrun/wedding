class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.authenticate(params[:username], params[:password])
    if user
      session[:user_id] = user.id
      if user.admin?
        redirect_to rejoinders_path
      else
        redirect_to log_in_path, :notice => "Logged in!"
      end
    else
      flash[:error] = "Invalid username or password"
      render "new"
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_path, :notice => "Logged out!"
  end
end
