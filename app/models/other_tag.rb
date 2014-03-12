class OtherTag < ActiveRecord::Base
  has_many :other_taggings
  has_many :other_stores, through: :other_taggings

  validates :title, presence: true
end
