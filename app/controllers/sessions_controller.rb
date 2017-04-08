class SessionsController < ApplicationController

  def new
  end




  def create
    # binding.pry
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "Login Successful"
      redirect_to user_path(user)
    else
      flash.now[:failure] = "Login Unsuccessful"
      render :new
    end
    # username: params[:session][:username]

  end


end
