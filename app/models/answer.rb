class Answer < ActiveRecord::Base

  # associations
  belongs_to :user
  belongs_to :poll
  belongs_to :option


  # validations
  validates :option_id, :user_id, :poll_id, :presence => true

  # callbacks

end
