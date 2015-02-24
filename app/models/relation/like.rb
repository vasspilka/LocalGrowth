# == Schema Information
#
# Table name: likes
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  likeable_id   :integer
#  likeable_type :string
#  created_at    :datetime
#  updated_at    :datetime
#
# Indexes
#
#  index_likes_on_likeable_type_and_likeable_id              (likeable_type,likeable_id)
#  index_likes_on_user_id                                    (user_id)
#  index_likes_on_user_id_and_likeable_id_and_likeable_type  (user_id,likeable_id,likeable_type) UNIQUE
#

class Relation::Like < ActiveRecord::Base

  belongs_to :user
  belongs_to :likeable, polymorphic: true

  validates :user_id, presence: true
  validates :likeable_id, presence: true
  validates :likeable_type, presence: true

  before_save :add_point
  before_destroy :remove_point

  protected

  def add_point
    if self.likeable.points
  	  self.likeable.increment!(:points) 
    end
  end

  def remove_point
    if self.likeable.points
      self.likeable.try(:decrement!, :points) 
    end
  end

end
