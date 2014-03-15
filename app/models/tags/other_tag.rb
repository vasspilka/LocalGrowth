class Tags::OtherTag < ActiveRecord::Base

  self.table_name = "tags_other_tags"
  

  has_many :other_taggings
  has_many :other_stores, through: :other_taggings, class_name: "Stores::OtherStore"

  validates :title, presence: true
end
