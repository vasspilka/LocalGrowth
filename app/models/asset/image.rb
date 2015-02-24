# == Schema Information
#
# Table name: images
#
#  id                 :integer          not null, primary key
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#  imageable_id       :integer
#  imageable_type     :string
#  created_at         :datetime
#  updated_at         :datetime
#
# Indexes
#
#  index_images_on_imageable_type_and_imageable_id  (imageable_type,imageable_id)
#

class Asset::Image < ActiveRecord::Base
	belongs_to :imageable, polymorphic: true


	
  # Uploadable Image
  has_attached_file :image, :styles => {:medium => "500x500>", :thumb => "100x100>" }
  validates_attachment :image, :content_type => { :content_type => ["image/jpeg","image/jpg", "image/gif", "image/png"] }

end
