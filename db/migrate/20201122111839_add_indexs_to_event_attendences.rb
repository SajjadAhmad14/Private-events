class AddIndexsToEventAttendences < ActiveRecord::Migration[6.0]
  def change
    add_index :event_attendences, :event_attendee_id
    add_index :event_attendences, :attended_event_id
  end
end
