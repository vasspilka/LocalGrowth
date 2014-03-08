class FoodSubcategorization < ActiveRecord::Base
  belongs_to :food_subcategory
  belongs_to :food_store
end
