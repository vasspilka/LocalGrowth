class OtherCategory < ActiveRecord::Base
  has_many :other_stores

  validates :title, presence: true
end
