class Option < ActiveRecord::Base

  #relations
  belongs_to :poll
  has_many :votes

  # validations
  validates :text, :presence => true, :allow_blank => false

  def to_s
    return self.text
  end


end
