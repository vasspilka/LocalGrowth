class EntertainmentSubcategorization < ActiveRecord::Base
  belongs_to :entertainment_store
  belongs_to :entertainment_subcategory
end
