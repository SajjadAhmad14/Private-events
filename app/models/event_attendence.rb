class EventAttendence < ApplicationRecord
  belongs_to :event_attendence, class_name: 'User'
  belongs_to :attended_event, class_name: 'Event'
end
