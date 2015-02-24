# == Schema Information
#
# Table name: events
#
#  id                 :integer          not null, primary key
#  eventable_id       :integer
#  eventable_type     :string
#  title              :string
#  starts_at          :date
#  ends_at            :date
#  description        :text
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#  active             :boolean          default("f")
#  points_value       :integer          default("30")
#  points             :integer          default("0")
#  created_at         :datetime
#  updated_at         :datetime
#
# Indexes
#
#  index_events_on_eventable_type_and_eventable_id  (eventable_type,eventable_id)
#

class Ead::Event < Ead::Base

  ## Inherits from Ead::Base
  #

  self.table_name = "events"

  belongs_to :eventable, polymorphic: true
  has_many :attendings, class_name: "Relation::Attending"
  has_many :likes, as: :likeable, class_name: "Relation::Like"

  public

  def store
    return self.eventable
  end
end
