class Ead::Deal < Ead::Base

  ## Inherits from Ead::Base
  #
  
  self.table_name = "deals"

  belongs_to :dealable, polymorphic: true

  public

  def store
    return self.dealable
  end
end
