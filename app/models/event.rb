class Event < ActiveRecord::Base
  belongs_to :eventable, polymorphic: true
  has_many :likes, as: :likeable
  has_many :attendings

  after_save :add_points_to_shop

  protected

  def add_points_to_shop
  	points = self.eventable.points + self.points_value
  	self.eventable.update_attributes(:points => points)
  end

end
