class FoodSubcategory < ActiveRecord::Base

  has_many :food_subcategorizations
  has_many :food_shops, through: :food_subcategorizations
  

  validates :title, presence: true

end
