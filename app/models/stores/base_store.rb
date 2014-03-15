class Stores::BaseStore < ActiveRecord::Base

  has_many :taggings, as: :tagable, class_name: "Tags::Tagging"
  has_many :tags, :through => :taggings , class_name: "Tags::Tag"
  has_many :reviews, as: :reviewable, class_name: "Asset::Review"
  has_many :images, as: :imageable, class_name: "Asset::Image"
  has_many :phones, as: :phoneable, class_name: "Asset::Phone"
  has_many :ads, as: :adable, class_name: "Ead::Ad"
  has_many :events, as: :eventable, class_name: "Ead::Event"
  has_many :deals, as: :dealable, class_name: "Ead::Deal"
  has_many :likes, as: :likeable, class_name: "Relation::Like"

  paginates_per 7
  validates :title, presence: true

  private

  def rating_percent
    percentage = self.rating / self.reviews.with_rating.count
  end

end