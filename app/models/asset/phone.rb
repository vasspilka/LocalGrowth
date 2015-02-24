# == Schema Information
#
# Table name: phones
#
#  id             :integer          not null, primary key
#  number         :string
#  number_type    :string
#  phoneable_id   :integer
#  phoneable_type :string
#  created_at     :datetime
#  updated_at     :datetime
#
# Indexes
#
#  index_phones_on_phoneable_type_and_phoneable_id  (phoneable_type,phoneable_id)
#

class Asset::Phone < ActiveRecord::Base
  belongs_to :phoneable, polymorphic: true
end
