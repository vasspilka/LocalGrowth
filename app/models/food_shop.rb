class FoodShop < ActiveRecord::Base
  belongs_to :food_category
  has_many :food_subcategorizations
  has_many :food_subcategories, through: :food_subcategorizations
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
