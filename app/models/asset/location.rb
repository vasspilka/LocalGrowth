class Asset::Location < ActiveRecord::Base
  belongs_to :geocoded, polymorphic: true

  geocoded_by :address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates
end
