class Stores::OtherStore < Stores::BaseStore

  ## Inherits from BaseStore
  #

  self.table_name = "other_stores"

  belongs_to :other_category
  
  validates :title,:other_category_id, presence: true
end
