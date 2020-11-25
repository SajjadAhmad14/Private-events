class EventsController < ApplicationController
  before_action :current_user, only: [:new, :create]
  
  include EventsHelper
  
  def new
    @event = Event.new
  end

  def create
    # @user = User.find(session[:user_id])
    @user = current_user
    if @user
      @event = @user.created_events.new(event_params)
    else
      p "User not present!"
    end

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
    @events = Event.all
  end

end
