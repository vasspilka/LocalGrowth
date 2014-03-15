class Ead::Event < ActiveRecord::Base

  belongs_to :eventable, polymorphic: true
  has_many :likes, as: :likeable
  has_many :attendings

  # Callbacks 
  after_save :add_points_to_shop

  # Scopes
  scope :active,   -> { where(:active => true) }
  scope :inactive, -> { where(:active => false) }

  protected

  def add_points_to_shop
    unless self.eventable.blank?
      points = self.eventable.points + self.points_value
      self.eventable.update_attributes(:points => points)
    end
  end

end
