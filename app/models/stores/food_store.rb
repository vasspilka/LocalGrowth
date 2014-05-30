# == Schema Information
#
# Table name: food_stores
#
#  id                :integer          not null, primary key
#  title             :string(255)
#  food_category_id  :integer
#  description       :text
#  logo_file_name    :string(255)
#  logo_content_type :string(255)
#  logo_file_size    :integer
#  logo_updated_at   :datetime
#  website_url       :string(255)
#  working_hours     :string(255)
#  min_order         :integer          default(5)
#  points            :integer          default(0)
#  rating            :integer
#  created_at        :datetime
#  updated_at        :datetime
#
# Indexes
#
#  index_food_stores_on_food_category_id  (food_category_id)
#

class Stores::FoodStore < ActiveRecord::Base
  include Stores::BaseStore

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

  paginates_per 8
  
  has_attached_file :logo, :styles => {:small => "150x150>", :thumb => "100x100>" }, :default => "no-image.jpg"
  validates_attachment :logo, :content_type => { :content_type => ["image/jpeg","image/jpg", "image/gif", "image/png"] }
  
  self.table_name = "food_stores"

  belongs_to :food_category
  
  validates  :food_category_id, presence: true
end
