class Event < ActiveRecord::Base
  belongs_to :eventable, polymorphic: true
  has_many :likes, as: :likeable
  has_many :attendings

end
