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

require 'spec_helper'

describe FeedbackMessage do
  pending "add some examples to (or delete) #{__FILE__}"
end
