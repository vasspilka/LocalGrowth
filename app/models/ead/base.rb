class Ead::Base < ActiveRecord::Base

  # Callbacks 
  after_save :add_points_to_store

  # Scopes
  scope :active,   -> { where(:active => true) }
  scope :inactive, -> { where(:active => false) }

  has_attached_file :image, :styles => {:medium => "500x500>", :thumb => "100x100>" }
  validates_attachment :image, :content_type => { :content_type => ["image/jpeg","image/jpg", "image/gif", "image/png"] }



  protected

  def add_points_to_store
    unless self.store.blank?
  	  points = self.store.points + self.points_value
  	  self.store.update_attributes(:points => points)
    end
  end

end
