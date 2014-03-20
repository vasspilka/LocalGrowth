class Ead::Ad < Ead::Base

  ## Inherits from Ead::Base
  #

  self.table_name = "ads"

  belongs_to :adable, polymorphic: true

  public

  def store
    return self.adable
  end
end
