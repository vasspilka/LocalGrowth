class Asset::Review < ActiveRecord::Base
  # Callbacks 
  after_save :add_rating_to_store

  # Assosiations
  belongs_to :user
  belongs_to :reviewable, polymorphic: true
  
  # Validations
  validates :user_id, :content, presence: true

  


  private

  def add_rating_to_store

  end

end
