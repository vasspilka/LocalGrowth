class Ead::Deal < Ead::Base

  belongs_to :dealable, polymorphic: true
end
