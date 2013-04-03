class Response < ActiveRecord::Base
  attr_accessible :choice_id, :user_id

  validates :user, :choice, :presence => true
  validate :validate_response
  validate :creator_can_not_add_to_own_poll
  belongs_to :user
  belongs_to :choice

  def validate_response
    if Response.where(:user_id => user_id).pluck('choice_id').include?(choice_id)
      errors[:base]<< "choice already selected by user"
    end
  end

  def creator_can_not_add_to_own_poll
    if self.choice.question.poll.user.id == self.user_id
      errors[:response] << "can not be added to user's own poll"
    end
  end
end
