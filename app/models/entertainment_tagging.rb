class EntertainmentTagging < ActiveRecord::Base
  belongs_to :entertainment_store
  belongs_to :entertainment_tag
end
