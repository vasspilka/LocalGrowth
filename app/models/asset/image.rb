class Asset::Image < ActiveRecord::Base
	belongs_to :imageable, polymorphic: true


	
  # Uploadable Image
  has_attached_file :image, :styles => {:medium => "500x500>", :thumb => "100x100>" }
  validates_attachment :image, :content_type => { :content_type => ["image/jpeg","image/jpg", "image/gif", "image/png"] }

end
