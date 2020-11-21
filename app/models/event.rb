class Event < ApplicationRecord
  validates :date, :name, presence: true
  has_many :invitations, foreign_key: :attended_event_id
  has_many :attendees, through: :invitations, source: :creator
  belongs_to :creator, class_name: 'User'
end
