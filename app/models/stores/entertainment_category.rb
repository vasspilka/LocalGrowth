class Stores::EntertainmentCategory < ActiveRecord::Base

  self.table_name = "stores_entertainment_categories"

  has_many :entertainment_stores
  
  validates :title, presence: true
end
