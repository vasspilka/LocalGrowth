class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :phones, as: :phoneable
  #Relationship with other users       
  has_many :relationships, foreign_key: "follower_id", dependent: :destroy
  has_many :followed_users, through: :relationships, source: :followed
  has_many :reverse_relationships, foreign_key: "followed_id",
                                   class_name:  "Relationship",
                                   dependent:   :destroy
  has_many :followers, through: :reverse_relationships, source: :follower

  #Relationship with likeable objects (Shops,Events,Deals)
  has_many :likes, foreign_key: "user_id", dependent: :destroy
  has_many :liked_events, through: :likes, source: :likeable, source_type: 'Event'
  has_many :liked_deals, through: :likes, source: :likeable, source_type: 'Deal'
  has_many :liked_fun_shops, through: :likes, source: :likeable, source_type: 'FunShop'
  has_many :liked_food_shops, through: :likes, source: :likeable, source_type: 'FoodShop'
  has_many :liked_other_shops, through: :likes, source: :likeable, source_type: 'OtherShop'
  
  #Relationship with Events
  has_many :attendings, foreign_key: "user_id", dependent: :destroy
  has_many :attended_events, through: :attendings, source:  :event

  #Actions for attendings
  def attended?(event)
  	attendings.find_by(event_id: event.id)
  end
  
  def attend!(event)
  	attendings.create!(event_id: event.id)
  end

  def unattend!(event)
  	attendings.find_by(event_id: event.id).destroy!
  end

  #Actions for likeable obects
  def likes?(likeable_object)
  	likes.find_by(likeable_id: likeable_object.id,likeable_type: "#{likeable_object.class.to_s}")
  end
  
  def like!(likeable_object)
  	likes.create!(likeable_id: likeable_object.id,likeable_type: "#{likeable_object.class.to_s}")
  end

  def unlike!(likeable_object)
  	likes.find_by(likeable_id: likeable_object.id,likeable_type: "#{likeable_object.class.to_s}").destroy!
  end

  #Actions for Relations with Users
  def following?(other_user)
    relationships.find_by(followed_id: other_user.id)
  end

  def follow!(other_user)
    relationships.create!(followed_id: other_user.id)
  end

  def unfollow!(other_user)
    relationships.find_by(followed_id: other_user.id).destroy!
  end
end
