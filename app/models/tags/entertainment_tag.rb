class Tags::EntertainmentTag < ActiveRecord::Base

  self.table_name = "tags_entertainment_tags"

  has_many :entertainment_taggings	
  has_many  :entertainment_stores, :through => :entertainment_taggings, class_name: "Stores::EntertainmentStore" 

  validates :title, presence: true
end
