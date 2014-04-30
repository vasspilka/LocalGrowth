# == Schema Information
#
# Table name: ads
#
#  id                 :integer          not null, primary key
#  adable_id          :integer
#  adable_type        :string(255)
#  title              :string(255)
#  starts_at          :date
#  ends_at            :date
#  description        :text
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#  points_value       :integer          default(20)
#  active             :boolean          default(FALSE)
#  created_at         :datetime
#  updated_at         :datetime
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
