class FoodCategory < ActiveRecord::Base
  has_many :food_shops

  validates :title, presence: true
end