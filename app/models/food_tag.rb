class FoodTag< ActiveRecord::Base

  has_many :food_taggings
  has_many :food_stores, through: :food_taggings
  

  validates :title, presence: true

end
