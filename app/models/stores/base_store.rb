module Stores::BaseStore


  public

  def rating_compute
    self.rating / self.reviews.with_rating.count
  end

  def has_events_or_deals?
    self.ads.any? || self.deals.any?
  end

  def valid_locations
    self.locations.where("longitude IS NOT 38.901383* AND latitude IS NOT ")
  end

end
