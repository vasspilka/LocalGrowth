# == Schema Information
#
# Table name: phones
#
#  id             :integer          not null, primary key
#  number         :string(255)
#  number_type    :string(255)
#  phoneable_id   :integer
#  phoneable_type :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#
# Indexes
#
#  index_phones_on_phoneable_id_and_phoneable_type  (phoneable_id,phoneable_type)
#

class Asset::Phone < ActiveRecord::Base
  belongs_to :phoneable, polymorphic: true
end
