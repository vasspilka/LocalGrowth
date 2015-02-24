# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default("0"), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  provider               :string
#  uid                    :string
#  username               :string
#  name                   :string
#  surname                :string
#  birthday               :date
#  address                :string
#  gravatar               :string
#  student_id             :integer
#  created_at             :datetime
#  updated_at             :datetime
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,:recoverable, :rememberable,
         :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]
         
  # Assets       
  has_many :reviews ,class_name: "Asset::Review"
  has_many :phones, as: :phoneable, class_name: "Asset::Phone"
  has_many :locations, as: :geocoded , class_name: "Asset::Location"



  # Relations       
  has_many :relationships, foreign_key: "follower_id", class_name: "Relation::Relationship", dependent: :destroy
  has_many :likes, foreign_key: "user_id", dependent: :destroy , class_name: "Relation::Like"
  has_many :attendings, foreign_key: "user_id", dependent: :destroy, class_name: "Relation::Attending"
  has_many :poll_votes, foreign_key: "user_id", dependent: :destroy, class_name: "Poll::Vote"

  # Relations scoped
  has_many :followed_users, through: :relationships, source: :followed
  has_many :reverse_relationships, foreign_key: "followed_id",class_name: "Relation::Relationship", dependent:   :destroy
  has_many :followers, through: :reverse_relationships, source: :follower
  has_many :liked_events, through: :likes, source: :likeable, source_type: 'Ead::Event'
  has_many :liked_deals, through: :likes, source: :likeable, source_type: 'Ead::Deal'
  has_many :liked_entertainment_stores, through: :likes, source: :likeable, source_type: 'Store::EntertainmentStore'
  has_many :liked_food_stores, through: :likes, source: :likeable, source_type: 'Store::FoodStore'
  has_many :liked_other_stores, through: :likes, source: :likeable, source_type: 'Store::OtherStore'
  has_many :attended_events, through: :attendings, source:  :event, class_name: "Ead::Event"
  has_many :voted_polls, through: :poll_votes, source:  :poll, class_name: "Poll::Poll"

  # Functions for Relations
  def attended?(event)
  	attendings.find_by(event_id: event.id) end
  def attend!(event)
  	attendings.create!(event_id: event.id) end
  def unattend!(event)
  	attendings.find_by(event_id: event.id).destroy! end

  def likes?(likeable)
  	likes.find_by(likeable_id: likeable.id,likeable_type: likeable.class.to_s) end
  def like!(likeable)
  	likes.create!(likeable_id: likeable.id,likeable_type: likeable.class.to_s) end
  def unlike!(likeable)
  	likes.find_by(likeable_id: likeable.id,likeable_type: likeable.class.to_s).destroy! end

  def following?(other_user)
    relationships.find_by(followed_id: other_user.id) end
  def follow!(other_user)
    relationships.create!(followed_id: other_user.id) end
  def unfollow!(other_user)
    relationships.find_by(followed_id: other_user.id).destroy! end

  def vote!(poll_option)
    poll_votes.create!(poll_option_id: poll_option.id, poll_id: poll_option.poll_id) end
  def unvote!(poll)
    poll_votes.find_by(poll_id: poll.id).destroy! end
  def voted?(poll)
    poll_votes.find_by(poll_id: poll.id) end


  # Facebook login using omniauth
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
