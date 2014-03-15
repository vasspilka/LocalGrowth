class Asset::Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :reviewable, polymorphic: true

  validates :user_id, :content, presence: true
end
