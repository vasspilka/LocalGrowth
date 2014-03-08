hclass EntertainmentCategory < ActiveRecord::Base
  has_many :entertainment_stores
  
  validates :title, presence: true
end
