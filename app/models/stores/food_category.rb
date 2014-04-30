# == Schema Information
#
# Table name: food_categories
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Stores::FoodCategory < ActiveRecord::Base
  has_many :food_stores

  validates :title, presence: true
end
