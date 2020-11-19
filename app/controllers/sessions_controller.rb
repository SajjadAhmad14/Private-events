class SessionsController < ApplicationController

  def new
    
  end

  def create
    user = User.find_by(user_name: params[:session][:user_name].downcase)
    if user
      session[:user_id] = user.id
      redirect_to user
    else
      render 'new'
    end
  end
end