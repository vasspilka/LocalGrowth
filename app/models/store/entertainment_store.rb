# == Schema Information
#
# Table name: entertainment_stores
#
#  id                        :integer          not null, primary key
#  title                     :string
#  entertainment_category_id :integer
#  description               :text
#  logo_file_name            :string
#  logo_content_type         :string
#  logo_file_size            :integer
#  logo_updated_at           :datetime
#  website_url               :string
#  working_hours             :string
#  rating                    :integer
#  points                    :integer          default("0")
#  created_at                :datetime
#  updated_at                :datetime
#
# Indexes
#
#  index_entertainment_stores_on_entertainment_category_id  (entertainment_category_id)
#

class Store::EntertainmentStore < ActiveRecord::Base
  include Store::BaseStore

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

  has_attached_file :logo, :styles => {:small => "150x150>", :thumb => "100x100>" }, :default => "no-image.jpg"
  validates_attachment :logo, :content_type => { :content_type => ["image/jpeg","image/jpg", "image/gif", "image/png"] }

  paginates_per 8
  self.table_name = "entertainment_stores"

  belongs_to :entertainment_category


  validates  :entertainment_category_id, presence: true

  def category
    self.entertainment_category.title
  end

end
