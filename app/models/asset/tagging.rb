# == Schema Information
#
# Table name: taggings
#
#  id           :integer          not null, primary key
#  tag_id       :integer
#  tagable_id   :integer
#  tagable_type :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class Asset::Tagging < ActiveRecord::Base
  belongs_to :tag , class_name: "Asset::Tag"
  belongs_to :tagable , polymorphic: true
end
