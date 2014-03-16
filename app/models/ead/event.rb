class Ead::Event < Ead::Base

  ## Inherits from Ead::Base
  #

  self.table_name = "events"

  belongs_to :eventable, polymorphic: true
end
