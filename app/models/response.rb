class Response < ActiveRecord::Base
  attr_accessible :choice_id, :user_id

  validates :user, :choice, :presence => true

  belongs_to :user
  belongs_to :choice
end
