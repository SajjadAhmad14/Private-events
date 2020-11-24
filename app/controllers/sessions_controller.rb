class SessionsController < ApplicationController

  def new
    
  end

  def create
    user = User.find_by(user_name: params[:session][:user_name].downcase)
    if user
      session[:user_id] = user.id
      redirect_to user
    else
      flash.now[:error] = "Username does not exits!"
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
    @user = nil
    if @user.nil?
      redirect_to root_path, notice: "You have successfully logged out."
    end
    

  end
end
