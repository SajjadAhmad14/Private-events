class Event < ApplicationRecord
  validates :name, :description, presence: true

  has_many :event_attendences, foreign_key: :attended_event_id
  has_many :event_attendees, through: :event_attendences
  belongs_to :creator, class_name: 'User'
  
end
