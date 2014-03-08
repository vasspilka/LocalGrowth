class EntertainmentSubcategory < ActiveRecord::Base
  has_many :entertainment_subcategorizations	
  has_many  :entertainment_stores, :through => :entertainment_subcategorizations

  validates :title, presence: true
end
