class Asset::Tagging < ActiveRecord::Base
  belongs_to :tag , class_name: "Asset::Tag"
  belongs_to :tagable , polymorphic: true
end
