class OtherCategory < ActiveRecord::Base
  has_many :other_shops

  validates :title, presence: true
end
