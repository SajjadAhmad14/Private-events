module SessionsHelper

  def current_user_name
    if @user
    @user = User.find(session[:user_id])
    @user.user_name
    end
  end

  def logged_in?
    if @user
    @user = User.find(session[:user_id])
    end
  end
end
