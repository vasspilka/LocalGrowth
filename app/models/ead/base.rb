class Ead::Base < ActiveRecord::Base

  # Callbacks 
  after_save :add_points_to_store

  # Scopes
  scope :active,   -> { where(:active => true) }
  scope :inactive, -> { where(:active => false) }


  protected

  def add_points_to_store
    unless self.store.blank?
  	  points = self.store.points + self.points_value
  	  self.store.update_attributes(:points => points)
    end
  end

end
