class Question < ActiveRecord::Base
  attr_accessible :question, :poll_id
  validates :question, :poll, :presence => true

  has_many :choices
  belongs_to :poll
end
