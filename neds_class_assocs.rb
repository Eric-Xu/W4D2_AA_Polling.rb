class Question < ActiveRecord::Base
  attr_accessible :prompt

  has_many :answer_choices
  belongs_to :poll
  has_one :poll_author, :through => :poll, :source => :author
  has_many :responses, :through => :answer_choices
end

class AnswerChoice < ActiveRecord::Base
  attr_accessible :response_text

  has_one :poll_author, :through => :question
  belongs_to :question
  has_many :responses
end

class Poll < ActiveRecord::Base
  attr_accessible :title

  has_many :questions
  belongs_to :author, :class_name => "User"
end

class Response < ActiveRecord::Base
  attr_accessible :answer_choice_id, :respondent_id

  belongs_to :answer_choice
  has_one :poll_author, :through => :answer_choice
  has_one :question, :through => :answer_choice
  # will infer `foreign_key => :respondent_id`
  belongs_to :respondent, :class_name => "User"

  validates :answer_choice, :respondent, :presence => true
  validate :respondent_has_not_already_answered_question
  validate :respondent_is_not_poll_author

class User < ActiveRecord::Base
  attr_accessible :user_name

  has_many :polls, :foreign_key => "author_id"
  has_many :responses, :foreign_key => "respondent_id"
end