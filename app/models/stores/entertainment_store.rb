class Stores::EntertainmentStore < ActiveRecord::Base
  has_many :taggings, as: :tagable , class_name: "Asset::Tagging" 
  has_many :tags, :through => :taggings , class_name: "Asset::Tag"  
  has_many :locations, as: :geocoded , class_name: "Asset::Location"
  has_many :images, as: :imageable, class_name: "Asset::Image"
  has_many :phones, as: :phoneable, class_name: "Asset::Phone"
  has_many :reviews, as: :reviewable, class_name: "Asset::Review"
  has_many :ads, as: :adable, class_name: "Ead::Ad"
  has_many :events, as: :eventable, class_name: "Ead::Event"
  has_many :deals, as: :dealable, class_name: "Ead::Deal"
  has_many :likes, as: :likeable, class_name: "Relation::Like"

  validates :title, presence: true
  paginates_per 20

  public

  def rating_percent
    percentage = self.rating / self.reviews.with_rating.count
    return percentage
  end


  ## Inherits from BaseStore
  #

  self.table_name = "entertainment_stores"

  belongs_to :entertainment_category

  validates :title,:entertainment_category_id, presence: true
end
