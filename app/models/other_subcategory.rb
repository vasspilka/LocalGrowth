class OtherSubcategory < ActiveRecord::Base
  has_many :other_subcategorizations
  has_many :other_stores, through: :other_subcategorizations

  validates :title, presence: true
end
