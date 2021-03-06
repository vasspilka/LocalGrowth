# == Schema Information
#
# Table name: reviews
#
#  id              :integer          not null, primary key
#  user_id         :integer
#  expert          :boolean          default("f")
#  content         :text
#  rating          :integer
#  reviewable_id   :integer
#  reviewable_type :string
#  created_at      :datetime
#  updated_at      :datetime
#
# Indexes
#
#  index_reviews_on_reviewable_type_and_reviewable_id  (reviewable_type,reviewable_id)
#

class Asset::Review < ActiveRecord::Base
  # Callbacks 
  #after_save :add_rating_to_store

  # Assosiations
  belongs_to :user
  belongs_to :reviewable, polymorphic: true
  
  # Validations
  validates :user_id, :content, presence: true


  # Scopes
  scope :with_rating, -> {where("rating IS NOT NULL")}


  private

  def add_rating_to_store
    unless self.reviewable.blank?
  	  rating = self.reviewable.rating + self.rating
  	  self.reviewable.update_attributes(:rating => rating)
    end
  end




end
