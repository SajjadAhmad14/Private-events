class AttendeesController < ApplicationController

  def create
    p event_id = params[:id]
    if logged_in?
      p session[:user_id]
      @event_attendee = EventAttendence.new(event_attendence_id:session[:user_id], attended_event_id:event_id)
      @event_attendee.save
    end 
  end
end
