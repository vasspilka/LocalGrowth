# == Schema Information
#
# Table name: locations
#
#  id            :integer          not null, primary key
#  address       :string(255)
#  geocoded_id   :integer
#  geocoded_type :string(255)
#  latitude      :float
#  longitude     :float
#  created_at    :datetime
#  updated_at    :datetime
#
# Indexes
#
#  index_locations_on_geocoded_id_and_geocoded_type  (geocoded_id,geocoded_type)
#

class Asset::Location < ActiveRecord::Base
  belongs_to :geocoded, polymorphic: true

  geocoded_by :address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates
end
