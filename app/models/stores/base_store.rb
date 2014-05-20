# == Schema Information
#
# Table name: base_stores
#
#  id :integer          not null, primary key
#

class Stores::BaseStore < ActiveRecord::Base


  has_attached_file :logo, :styles => {:small => "150x150>", :thumb => "100x100>" }, :default => "no-image.jpg"
  validates_attachment :logo, :content_type => { :content_type => ["image/jpeg","image/jpg", "image/gif", "image/png"] }

  validates :title, presence: true
  paginates_per 8

  public

  def rating_percent
    percentage = self.rating / self.reviews.with_rating.count
    return percentage
  end

end
