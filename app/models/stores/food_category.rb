class Stores::FoodCategory < ActiveRecord::Base

  self.table_name = "stores_food_categories"


  has_many :food_stores

  validates :title, presence: true
end