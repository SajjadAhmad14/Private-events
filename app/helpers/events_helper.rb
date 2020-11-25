module EventsHelper
  def event_params
    params.require(:event).permit(:name, :description, :date)
  end

  def past_events
    @events.where("date < ?", Date.today)
  end

  def future_events
    @events.where("date > ?", Date.today)
  end
end
