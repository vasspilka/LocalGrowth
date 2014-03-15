class Poll::PollVote < ActiveRecord::Base
  

  before_create :increase_poll_votes
  before_create :increase_poll_option_votes 
  

  # associations
  belongs_to :user
  belongs_to :poll
  belongs_to :poll_option

  # validations
  validates :poll_option_id, :user_id, :poll_id, :presence => true

  # callbacks
  private

    def increase_poll_votes
      self.poll.votes_count = self.poll.votes_count + 1
      self.poll.save
    end

    def increase_poll_option_votes
      self.poll_option.votes_count = self.poll_option.votes_count + 1
      self.poll_option.save
    end

end
