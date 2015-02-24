# == Schema Information
#
# Table name: tags
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime
#  updated_at :datetime
#

class Asset::Tag < ActiveRecord::Base
  has_many  :taggings , class_name: "Asset::Tagging"

  validates :title, presence: true
end
