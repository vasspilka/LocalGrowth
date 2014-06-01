# == Schema Information
#
# Table name: poll_votes
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  poll_id        :integer
#  poll_option_id :integer
#  created_at     :datetime
#  updated_at     :datetime
#
# Indexes
#
#  index_poll_votes_on_poll_id         (poll_id)
#  index_poll_votes_on_poll_option_id  (poll_option_id)
#  index_poll_votes_on_user_id         (user_id)
#

class Poll::Vote < ActiveRecord::Base

  self.table_name = "poll_votes"
  
  # callbacks
  before_create :increase_poll_votes
  before_create :increase_poll_option_votes 
  
  # associations
  belongs_to :user
  belongs_to :poll
  belongs_to :poll_option

  # validations
  validates :poll_option_id, :user_id, :poll_id, :presence => true

  private

    def increase_poll_votes
      self.poll.increment!(:votes_count)
    end

    def increase_poll_option_votes
      self.poll_option.increment!(:votes_count)
    end

end
