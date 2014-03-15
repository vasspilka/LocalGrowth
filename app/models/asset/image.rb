class Asset::Image < ActiveRecord::Base
  belongs_to :imageable, polymorphic: true
end
