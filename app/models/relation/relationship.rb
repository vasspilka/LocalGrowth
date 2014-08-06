# == Schema Information
#
# Table name: relationships
#
#  id          :integer          not null, primary key
#  follower_id :integer
#  followed_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#
# Indexes
#
#  index_relationships_on_followed_id                  (followed_id)
#  index_relationships_on_follower_id                  (follower_id)
#  index_relationships_on_follower_id_and_followed_id  (follower_id,followed_id) UNIQUE
#

class Relation::Relationship < ActiveRecord::Base
  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"
  
  validates :follower_id, presence: true
  validates :followed_id, presence: true
end
