# == Schema Information
#
# Table name: ads
#
#  id                 :integer          not null, primary key
#  adable_id          :integer
#  adable_type        :string
#  title              :string
#  starts_at          :date
#  ends_at            :date
#  description        :text
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#  points_value       :integer          default("20")
#  active             :boolean          default("f")
#  created_at         :datetime
#  updated_at         :datetime
#
# Indexes
#
#  index_ads_on_adable_type_and_adable_id  (adable_type,adable_id)
#

class Ead::Ad < Ead::Base

  ## Inherits from Ead::Base
  #

  self.table_name = "ads"

  belongs_to :adable, polymorphic: true

  public

  def store
    return self.adable
  end
end
