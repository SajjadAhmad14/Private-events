class User < ApplicationRecord
  before_validation :downcase
  validates :user_name, :email, presence: true
  validates_uniqueness_of :user_name

  has_many :invitations, foreign_key: :event_creator_id
  has_many :created_events, foreign_key: :creator_id, class_name: 'Event'
  has_many :attended_events, through: :invitations, class_name: 'Event'
  def downcase
    self.user_name.downcase!
  end
end
