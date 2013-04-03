class Choice < ActiveRecord::Base
  attr_accessible :choice, :question_id

  validates :choice, :question, :presence => true

  belongs_to :question
  has_many :responses
  has_many :users, :through => :responses


end
