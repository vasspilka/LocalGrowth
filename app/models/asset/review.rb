class Asset::Review < ActiveRecord::Base
  # Callbacks 
  after_save :add_rating_to_store

  # Assosiations
  belongs_to :user
  belongs_to :reviewable, polymorphic: true
  
  # Validations
  validates :user_id, :content, presence: true


  # Scopes
  # scope :with_rating, where(rating: => true)


  private

  def add_rating_to_store
    unless self.reviewable.blank?
  	  rating = self.reviewable.rating + self.rating
  	  self.reviewable.update_attributes(:rating => rating)
    end
  end



end
