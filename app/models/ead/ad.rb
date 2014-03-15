class Ead::Ad < ActiveRecord::Base

  belongs_to :adable, polymorphic: true

  # Callbacks 
  after_save :add_points_to_shop

  # Scopes
  scope :active,   -> { where(:active => true) }
  scope :inactive, -> { where(:active => false) }


  protected

  def add_points_to_shop
    unless self.adable.blank?
  	  points = self.adable.points + self.points_value
  	  self.adable.update_attributes(:points => points)
    end
  end

end
