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
# Indexes
#
#  index_attendings_on_event_id              (event_id)
#  index_attendings_on_user_id               (user_id)
#  index_attendings_on_user_id_and_event_id  (user_id,event_id) UNIQUE
#

class Relation::Attending < ActiveRecord::Base
  belongs_to :user
  belongs_to :event, class_name: "Ead::Event"
end
