class Ad < ActiveRecord::Base
  belongs_to :adable, polymorphic: true
end
