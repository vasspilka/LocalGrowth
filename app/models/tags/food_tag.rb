class Tags::FoodTag< ActiveRecord::Base

  self.table_name = "tags_food_tags"


  has_many :food_taggings
  has_many :food_stores, through: :food_taggings, class_name: "Stores::FoodStore"
  

  validates :title, presence: true

end
