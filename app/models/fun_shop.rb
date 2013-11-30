class FunShop < ActiveRecord::Base
  belongs_to :fun_category
  has_many :fun_subcategorizations
  has_many :fun_subcategories, :through => :fun_subcategorizations
  has_many :comments, as: :commentable
  has_many :images, as: :imageable
  has_many :phones, as: :phoneable
  has_many :ads, as: :adable
  has_many :events, as: :eventable
  has_many :deals, as: :dealable
  has_many :likes, as: :likeable
  paginates_per 5

  validates :title,:fun_category_id, presence: true
end
