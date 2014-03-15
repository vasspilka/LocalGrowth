class EntertainmentTagging < ActiveRecord::Base
 
  self.table_name = "tags_taggings"

  belongs_to :tag
  belongs_to :tagable, polymorphic: true
end
