# == Schema Information
#
# Table name: polls
#
#  id          :integer          not null, primary key
#  question    :string(255)
#  active      :boolean          default(FALSE)
#  votes_count :integer          default(0)
#  ends_at     :date
#  created_at  :datetime
#  updated_at  :datetime
#

class Poll::Poll < ActiveRecord::Base

  has_many   :poll_options, :dependent => :destroy, class_name: "Poll::PollOption"
  accepts_nested_attributes_for :poll_options,
    :reject_if => ->(a) { a[:text].blank? },
    :allow_destroy => true

  # validations
  validates :question, :presence => true, :allow_blank => false

  # scopes
  scope :active,   -> { where(:active => true) }
  scope :inactive, -> { where(:active => false) }

  private 


end
