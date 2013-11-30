class FunSubcategory < ActiveRecord::Base
  has_many :fun_subcategorizations	
  has_many  :fun_shops, :through => :fun_subcategorizations

  validates :title, presence: true
end
