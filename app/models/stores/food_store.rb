class Stores::FoodStore < ActiveRecord::Base

  self.table_name = "stores_food_stores"
  

  belongs_to :food_category
  has_many :food_taggings
  has_many :food_tags, through: :food_taggings ,class_name: "Tags::FoodTag"
  has_many :comments, as: :commentable
  has_many :images, as: :imageable
  has_many :phones, as: :phoneable
  has_many :ads, as: :adable
  has_many :events, as: :eventable
  has_many :deals, as: :dealable
  has_many :likes, as: :likeable

  paginates_per 7
  
  validates :title,:food_category_id, presence: true
end
