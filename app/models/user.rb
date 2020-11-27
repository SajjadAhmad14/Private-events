class User < ApplicationRecord
  before_validation :downcase
  validates :user_name, :email, presence: true
  validates_uniqueness_of :user_name

  has_many :event_attendences, foreign_key: :event_attendence_id
  has_many :attended_events, through: :event_attendences
  has_many :created_events, foreign_key: :creator_id, class_name: 'Event', dependent: :destroy

  def downcase
    user_name.downcase!
  end
end
