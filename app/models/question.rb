class Question < ActiveRecord::Base
  attr_accessible :question, :poll_id
  validates :question, :poll, :presence => true

  has_many :choices
  belongs_to :poll

  def self.generate(question, poll_id, *choices)
    new_question = Question.create(question: question, poll_id: poll_id)

    choices.each do |choice|
      new_question.choices << Choice.create(choice: choice)
    end

    new_question
  end
end
