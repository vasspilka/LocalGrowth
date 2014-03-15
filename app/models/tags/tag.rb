class Tags::Tag < ActiveRecord::Base

  has_many :taggings	
  has_many  :tagable, :through => :taggings

  validates :title, presence: true
end
