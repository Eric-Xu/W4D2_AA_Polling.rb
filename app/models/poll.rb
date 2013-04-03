class Poll < ActiveRecord::Base
  attr_accessible :title, :user_id

  validates :user, :title, :presence => true

  belongs_to :user
  has_many :questions

  def add_question(question, *choices)
    questions << Question.generate(question, self.id, *choices)
  end

end
