# == Schema Information
#
# Table name: other_stores
#
#  id                :integer          not null, primary key
#  title             :string(255)
#  other_category_id :integer
#  description       :text
#  logo_file_name    :string(255)
#  logo_content_type :string(255)
#  logo_file_size    :integer
#  logo_updated_at   :datetime
#  website_url       :string(255)
#  working_hours     :string(255)
#  points            :integer          default(0)
#  rating            :integer
#  created_at        :datetime
#  updated_at        :datetime
#

class Stores::OtherStore < Stores::BaseStore

  has_many :taggings, as: :tagable , class_name: "Asset::Tagging" 
  has_many :tags, :through => :taggings , class_name: "Asset::Tag"  
  has_many :locations, as: :geocoded , class_name: "Asset::Location"
  has_many :images, as: :imageable, class_name: "Asset::Image"
  has_many :phones, as: :phoneable, class_name: "Asset::Phone"
  has_many :reviews, as: :reviewable, class_name: "Asset::Review"
  has_many :ads, as: :adable, class_name: "Ead::Ad"
  has_many :events, as: :eventable, class_name: "Ead::Event"
  has_many :deals, as: :dealable, class_name: "Ead::Deal"
  has_many :likes, as: :likeable, class_name: "Relation::Like"
  
  ## Inherits from BaseStore
  #

  self.table_name = "other_stores"

  belongs_to :other_category
  
  validates  :other_category_id, presence: true
end
