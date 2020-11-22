class Event < ApplicationRecord
  validates :name, :description, presence: true
  has_many :invitations, foreign_key: :attended_event_id
  has_many :event_attendees, through: :invitations, source: :event_attendee
  belongs_to :creator, class_name: 'User'
end
