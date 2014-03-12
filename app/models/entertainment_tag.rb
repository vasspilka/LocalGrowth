class EntertainmentTag < ActiveRecord::Base
  has_many :entertainment_taggings	
  has_many  :entertainment_stores, :through => :entertainment_taggings

  validates :title, presence: true
end
