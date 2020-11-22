module EventsHelper
  def event_params
    params.require(:event).permit(:name, :description)
  end
end
