class Response < ActiveRecord::Base
  attr_accessible :choice_id, :user_id

  belongs_to :user #respondent
  belongs_to :choice #answer_choice

  validates :user, :choice, :presence => true
  validate :validate_response
  validate :creator_can_not_add_to_own_poll

  private
    def respondent_has_not_already_answered_question
      if Response.where(:user_id => user_id).pluck('choice_id').include?(choice_id)
        errors[:base] << "cannot vote twice for question"
      end
    end

    def respondent_is_not_poll_author
      if self.choice.question.poll.user.id == self.user_id
        errors[:response] << "cannot be poll author"
      end
    end

end
