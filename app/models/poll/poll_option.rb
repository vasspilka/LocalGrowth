# == Schema Information
#
# Table name: poll_options
#
#  id          :integer          not null, primary key
#  poll_id     :integer
#  text        :string(255)
#  votes_count :integer          default(0)
#  created_at  :datetime
#  updated_at  :datetime
#
# Indexes
#
#  index_poll_options_on_poll_id  (poll_id)
#

class Poll::PollOption < ActiveRecord::Base

  #relations
  belongs_to :poll
  has_many :votes

  # validations
  validates :text, :presence => true, :allow_blank => false

  def to_s
    return self.text
  end


end
