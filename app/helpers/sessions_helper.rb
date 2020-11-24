module SessionsHelper

  def current_user_name
    @user = User.find(session[:user_id])
    @user.user_name
  end
end
