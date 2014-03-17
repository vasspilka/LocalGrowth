class Ead::Event < Ead::Base

  ## Inherits from Ead::Base
  #

  self.table_name = "events"

  belongs_to :eventable, polymorphic: true
  has_many :attendings, class_name: "Relation::Attending"
  has_many :likes, as: :likeable, class_name: "Relation::Like"

  public

  def store
    store = self.eventable
    return store
  end
end
