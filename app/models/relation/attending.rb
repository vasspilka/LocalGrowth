class Relation::Attending < ActiveRecord::Base
  belongs_to :user
  belongs_to :event, class_name: "Ead::Event"
end
