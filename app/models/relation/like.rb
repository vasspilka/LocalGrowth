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
