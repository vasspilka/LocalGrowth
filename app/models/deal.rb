class Deal < ActiveRecord::Base
  belongs_to :dealable, polymorphic: true

  after_save :add_points_to_shop

  protected

  def add_points_to_shop
  	points = self.dealable.points + self.points_value
  	self.dealable.update_attributes(:points => points)
  end
end
