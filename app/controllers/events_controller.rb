class EventsController < ApplicationController
  before_action :current_user, only: %i[new create]

  include EventsHelper

  def new
    @event = Event.new
  end

  def create
    @user = current_user
    @event = @user.created_events.build(event_params)
    if @event.save
      redirect_to events_path
    else
      render 'new'
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def index
    @past_events = Event.past_events
    @upcoming_events = Event.future_events
  end
end
