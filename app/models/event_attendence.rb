class EventAttendence < ApplicationRecord
  belongs_to :event_attendence, class_name: 'User'
  belongs_to :attended_event, class_name: 'Event'

  # belongs_to :event_attendee, class_name: 'User'


end
