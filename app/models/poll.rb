class Poll < ActiveRecord::Base
  attr_accessible :title, :user_id

  validates :user, :title, :presence => true

  belongs_to :user
  has_many :questions
end
