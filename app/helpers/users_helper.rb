module UsersHelper

  def future_events
    Event.where('date > ?', Date.today)
  end

  def capitalize_user_name
    current_user.user_name.capitalize
  end
end
