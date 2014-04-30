# == Schema Information
#
# Table name: deals
#
#  id                 :integer          not null, primary key
#  dealable_id        :integer
#  dealable_type      :string(255)
#  starts_at          :date
#  ends_at            :date
#  title              :string(255)
#  description        :text
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#  points_value       :integer          default(30)
#  active             :boolean          default(FALSE)
#  created_at         :datetime
#  updated_at         :datetime
#

class Ead::Deal < Ead::Base

  ## Inherits from Ead::Base
  #
  
  self.table_name = "deals"

  belongs_to :dealable, polymorphic: true

  public

  def store
    return self.dealable
  end
end
