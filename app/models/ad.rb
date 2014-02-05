class Ad < ActiveRecord::Base
  belongs_to :adable, polymorphic: true

  after_save :add_points_to_shop

  protected

  def add_points_to_shop
  	points = self.adable.points + self.points_value
  	self.adable.update_attributes(:points => points)
  end

end
