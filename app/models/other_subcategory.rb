class OtherSubcategory < ActiveRecord::Base
  has_many :other_subcategorizations
  has_many :other_shops, through: :other_subcategorizations

  validates :title, presence: true
end
