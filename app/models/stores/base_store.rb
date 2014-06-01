module Stores::BaseStore


  public

  def rating_percent
    self.rating / self.reviews.with_rating.count
  end

  def has_events_or_deals?
    return self.ads.any? || self.deals.any?
  end

end
