class PollOption < ActiveRecord::Base

  #relations
  belongs_to :poll
  has_many :poll_votes

  # validations
  validates :text, :presence => true, :allow_blank => false

  def to_s
    return self.text
  end


end
