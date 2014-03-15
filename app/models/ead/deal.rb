class Ead::Deal < ActiveRecord::Base

  belongs_to :dealable, polymorphic: true
  
  # Callbacks 
  after_save :add_points_to_shop

  # Scopes
  scope :active,   -> { where(:active => true) }
  scope :inactive, -> { where(:active => false) }

  protected

  def add_points_to_shop
    unless self.dealable.blank?
      points = self.dealable.points + self.points_value
      self.dealable.update_attributes(:points => points)
    end
  end
end
