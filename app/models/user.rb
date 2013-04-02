class User < ActiveRecord::Base
  attr_accessible :email, :username
  validates :email, :username, :presence => true, :uniqueness => true

  has_many :polls
  has_many :responses
  has_many :choices, :through => :responses
end
