# == Schema Information
#
# Table name: events
#
#  id                 :integer          not null, primary key
#  eventable_id       :integer
#  eventable_type     :string(255)
#  title              :string(255)
#  starts_at          :date
#  ends_at            :date
#  description        :text
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#  active             :boolean          default(FALSE)
#  points_value       :integer          default(30)
#  points             :integer          default(0)
#  created_at         :datetime
#  updated_at         :datetime
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
