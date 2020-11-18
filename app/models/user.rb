class User < ApplicationRecord
  has_many :invitations
  has_many :events, through: :invitations
end
