class Ead::Base < ActiveRecord::Base

  # Callbacks 
  after_save :add_points_to_store

  # Scopes
  scope :active,   -> { where(:active => true) }
  scope :inactive, -> { where(:active => false) }


  protected

  def add_points_to_store
    unless self.adable.blank?
  	  points = self.adable.points + self.points_value
  	  self.adable.update_attributes(:points => points)
    end
  end

end
