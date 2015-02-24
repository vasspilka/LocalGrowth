# == Schema Information
#
# Table name: food_categories
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime
#  updated_at :datetime
#

class Store::FoodCategory < ActiveRecord::Base
  has_many :food_stores

  validates :title, presence: true

end
