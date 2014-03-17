class Ead::Deal < Ead::Base

  ## Inherits from Ead::Base
  #
  
  self.table_name = "deals"

  belongs_to :dealable, polymorphic: true

  public

  def store
    store = self.dealable
    return store
  end
end
