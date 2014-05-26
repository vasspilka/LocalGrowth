# == Schema Information
#
# Table name: base_stores
#
#  id :integer          not null, primary key
#

module Stores::BaseStore

  public

  def rating_percent
    percentage = self.rating / self.reviews.with_rating.count
    return percentage
  end

  def has_events_or_deals?
    return self.ads.any? || self.deals.any?
  end

end
