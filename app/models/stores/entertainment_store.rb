class Stores::EntertainmentStore < ActiveRecord::Base

  self.table_name = "stores_entertainment_stores"


  belongs_to :entertainment_category
  has_many :entertainment_taggings
  has_many :entertainment_tags, :through => :entertainment_taggings , class_name: "Tags::EntertainmentTag"
  has_many :comments, as: :commentable
  has_many :images, as: :imageable
  has_many :phones, as: :phoneable
  has_many :ads, as: :adable
  has_many :events, as: :eventable
  has_many :deals, as: :dealable
  has_many :likes, as: :likeable
  paginates_per 7

  validates :title,:entertainment_category_id, presence: true
end
