class Deal < ActiveRecord::Base
	belongs_to :dealable, polymorphic: true
end
