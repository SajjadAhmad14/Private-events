class Event < ApplicationRecord
  validates :name, :date, :description, presence: true
  scope :past_events, -> { where('date < ?', Date.today) }
  scope :future_events, -> { where('date > ?', Date.today) }
  has_many :event_attendences, foreign_key: :attended_event_id
  has_many :event_attendees, through: :event_attendences, source: :event_attendence
  belongs_to :creator, class_name: 'User'
end
