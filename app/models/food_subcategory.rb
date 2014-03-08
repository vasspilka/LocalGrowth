class FoodSubcategory < ActiveRecord::Base

  has_many :food_subcategorizations
  has_many :food_stores, through: :food_subcategorizations
  

  validates :title, presence: true

end
