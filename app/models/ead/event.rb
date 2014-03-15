class Ead::Event < Ead::Base

  self.table_name = "events"

  belongs_to :eventable, polymorphic: true
end
