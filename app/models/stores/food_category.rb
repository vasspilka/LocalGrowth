class Stores::FoodCategory < ActiveRecord::Base
  has_many :food_stores

  validates :title, presence: true
end