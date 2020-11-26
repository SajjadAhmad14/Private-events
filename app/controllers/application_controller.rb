class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?, :past_events
  def current_user
    session[:user_id] ? User.find(session[:user_id]) : false
  end

  def logged_in?
    current_user ? true : false
  end
  def past_events
    Event.where("date < ?", Date.today)
  end
end
