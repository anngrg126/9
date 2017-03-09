class Event < ActiveRecord::Base
  belongs_to :user
  has_many :userEventMatches
  has_many :discussions
  has_many :user_joined,
           :through => :userEventMatches,
           :source => :user
end
