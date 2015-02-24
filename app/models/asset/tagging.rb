# == Schema Information
#
# Table name: taggings
#
#  id           :integer          not null, primary key
#  tag_id       :integer
#  tagable_id   :integer
#  tagable_type :string
#  created_at   :datetime
#  updated_at   :datetime
#
# Indexes
#
#  index_taggings_on_tagable_type_and_tagable_id  (tagable_type,tagable_id)
#

class Asset::Tagging < ActiveRecord::Base
  belongs_to :tag , class_name: "Asset::Tag"
  belongs_to :tagable , polymorphic: true
end
