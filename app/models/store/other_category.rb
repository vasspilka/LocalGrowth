# == Schema Information
#
# Table name: other_categories
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Store::OtherCategory < ActiveRecord::Base
  has_many :other_stores

  validates :title, presence: true
end
