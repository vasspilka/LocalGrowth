class Stores::BaseStore < ActiveRecord::Base

  validates :title, presence: true
  paginates_per 20

  public

  def rating_percent
    percentage = self.rating / self.reviews.with_rating.count
    return percentage
  end

end