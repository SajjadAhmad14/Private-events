class Event < ApplicationRecord
  has_many :invitations, foreign_key: :created_event_id
  has_many :attendees, through: :invitations, class_name: 'User'
  belongs_to :creator, class_name: 'User'
end
