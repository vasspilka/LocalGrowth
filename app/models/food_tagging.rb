class FoodTagging < ActiveRecord::Base
  belongs_to :food_tag
  belongs_to :food_store
end
