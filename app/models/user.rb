class User < ApplicationRecord
  before_validation :downcase
  validates :user_name, :email, presence: true
  validates_uniqueness_of :user_name

  def downcase
    self.user_name.downcase!
  end
end
