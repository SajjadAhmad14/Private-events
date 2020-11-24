class ApplicationController < ActionController::Base
  def current_user
    @user = User.find(sessiion[:user_id])
  end
end
