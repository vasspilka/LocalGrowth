class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

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

  has_many :poll_votes, foreign_key: "user_id", dependent: :destroy
  has_many :voted_polls, through: :votes, source:  :poll

  #Actions for connectors
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
  def likes?(likeable)
  	likes.find_by(likeable_id: likeable.id,likeable_type: likeable.class.to_s)
  end
  
  def like!(likeable)
  	likes.create!(likeable_id: likeable.id,likeable_type: likeable.class.to_s)
  end

  def unlike!(likeable)
  	likes.find_by(likeable_id: likeable.id,likeable_type: likeable.class.to_s).destroy!
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

  def vote!(poll_option)
    poll_votes.create!(poll_option_id: poll_option.id, poll_id: poll_option.poll_id)
  end

  def unvote!(poll)
    poll_votes.find_by(poll_id: poll.id).destroy!
  end

  def voted?(poll)
    poll_votes.find_by(poll_id: poll.id)
  end


  # Facebook with omniauth
  def self.from_omniauth(auth, signed_in_resource=nil)
    user = User.where(:provider => auth.provider, :uid => auth.uid).first
    unless user
      user = User.create(
        provider: auth.provider,
        uid: auth.uid,
        name: auth.extra.raw_info.name,
        email: auth.info.email,
        gravatar: auth.info.image,
        password: Devise.friendly_token[0,20]
        )
    end
    user
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.provider = data["provider"] if user.provider.blank?
        user.uid = data["uid"] if user.uid.blank?
        user.email = data["email"] if user.email.blank?
        user.name = data["name"] if user.name.blank?
        user.gravatar = data["image"] if user.gravatar.blank?
      end
    end
  end
end
