# == Schema Information
#
# Table name: entertainment_categories
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime
#  updated_at :datetime
#

class Store::EntertainmentCategory < ActiveRecord::Base
  has_many :entertainment_stores
  
  validates :title, presence: true
end
