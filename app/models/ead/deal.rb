# == Schema Information
#
# Table name: deals
#
#  id                 :integer          not null, primary key
#  dealable_id        :integer
#  dealable_type      :string
#  starts_at          :date
#  ends_at            :date
#  title              :string
#  description        :text
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#  points_value       :integer          default("30")
#  active             :boolean          default("f")
#  created_at         :datetime
#  updated_at         :datetime
#
# Indexes
#
#  index_deals_on_dealable_type_and_dealable_id  (dealable_type,dealable_id)
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
