class SessionsController < ApplicationController
  def new    
  end

  def create
    user = User.find_by_email params[:email]
    if user and user.authenticate params[:password]
      session[:user_id] = user.id
      redirect_to root_url, notice: "You are now logged in!"
    else
      flash.now.alert = "The username or password provided is incorrect."
      render "new"
    end
  end
end