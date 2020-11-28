module UsersHelper

  def past_attended_events
    current_user.attended_events.where("date < ?", Date.today)
  end

  def future_events
    current_user.attended_events.where('date > ?', Date.today)
  end

  def capitalize_user_name
    current_user.user_name.capitalize
  end
end
