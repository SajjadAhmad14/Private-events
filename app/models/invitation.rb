class Invitation < ApplicationRecord
  belongs_to :event_creator, class_name: 'User'
  belongs_to :created_event, class_name: 'Event'
end
