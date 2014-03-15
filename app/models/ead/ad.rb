class Ead::Ad < Ead::Base

  self.table_name = "ads"

  belongs_to :adable, polymorphic: true

end
