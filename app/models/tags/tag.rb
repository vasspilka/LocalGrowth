class Tags::Tag < ActiveRecord::Base

  self.table_name = "tags_tags"

  has_many :taggings	
  has_many  :tagables , :through => :taggings

  validates :title, presence: true
end
