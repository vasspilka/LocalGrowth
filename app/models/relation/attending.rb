# == Schema Information
#
# Table name: attendings
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  event_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Relation::Attending < ActiveRecord::Base
  belongs_to :user
  belongs_to :event, class_name: "Ead::Event"
end
