class FunCategory < ActiveRecord::Base
  has_many :fun_shops
  
  validates :title, presence: true
end
