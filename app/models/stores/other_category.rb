class Stores::OtherCategory < ActiveRecord::Base

  self.table_name = "stores_other_categories"
  

  has_many :other_stores

  validates :title, presence: true
end
