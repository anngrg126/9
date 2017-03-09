class User < ActiveRecord::Base
  has_secure_password

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :firstName, presence: true, length: {in: 3..20 }
  validates :lastName, presence: true, length: {in: 3..20 }
  validates :email, presence: true, uniqueness: { case_sensitive: false}, format: { with: EMAIL_REGEX }
  # validates :password, presence: true , confirmation: true


  has_many :events
  has_many :userEventMatches
  has_many :discussions

  has_many :events_joined,
           :through => :userEventMatches,
           :source => :event
end
