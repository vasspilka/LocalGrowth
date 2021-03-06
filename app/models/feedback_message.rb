# == Schema Information
#
# Table name: feedback_messages
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  name       :string
#  email      :string
#  subject    :string
#  body       :text
#  created_at :datetime
#  updated_at :datetime
#

class FeedbackMessage < ActiveRecord::Base
  belongs_to :user


  validates :name, :email, :subject, :body, :presence => true
  validates :email, :format => { :with => %r{.+@.+\..+} }, :allow_blank => true

end
