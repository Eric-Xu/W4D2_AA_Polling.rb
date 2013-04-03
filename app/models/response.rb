class Response < ActiveRecord::Base
  attr_accessible :choice_id, :user_id

  validates :user, :choice, :presence => true
  validate :validate_response
  belongs_to :user
  belongs_to :choice

  def validate_response
    if Response.where(:user_id => user_id).pluck('choice_id').include?(choice_id)
      errors[:base]<< "choice already selected by user"
    end
  end
end
