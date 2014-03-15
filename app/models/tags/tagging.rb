class Tags::Tagging < ActiveRecord::Base
  belongs_to :tag
  belongs_to :tagable, polymorphic: true
end
