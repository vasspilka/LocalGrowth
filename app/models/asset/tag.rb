class Asset::Tag < ActiveRecord::Base
  has_many  :taggings , class_name: "Asset::Tagging"

  validates :title, presence: true
end
