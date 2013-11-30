class Like < ActiveRecord::Base
  belongs_to :liker, class_name: "User"
  belongs_to :likeable, polymorphic: true

  validates :user_id, presence: true
  validates :likeable_id, presence: true
end
