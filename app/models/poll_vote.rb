class PollVote < ActiveRecord::Base

  # associations
  belongs_to :user
  belongs_to :poll
  belongs_to :poll_option


  # validations
  validates :poll_option_id, :user_id, :poll_id, :presence => true

  # callbacks

end
