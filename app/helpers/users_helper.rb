module UsersHelper
  def future_events
    Event.where('date > ?', Date.today)
  end
end
