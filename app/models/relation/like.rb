# == Schema Information
#
# Table name: likes
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  likeable_id   :integer
#  likeable_type :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#
# Indexes
#
#  index_likes_on_likeable_id_and_likeable_type              (likeable_id,likeable_type)
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
  	  points = self.likeable.points + 1 
  	  self.likeable.update_attributes(:points => points)
    end
  end

  def remove_point
    if self.likeable.points
      points = self.likeable.points - 1 
      self.likeable.update_attributes(:points => points)
    end
  end

end
