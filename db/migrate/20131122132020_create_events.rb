class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|

      t.string :title
      t.text   :description
      t.string :image_url
      t.belongs_to :eventable, polymorphic: true, index: true
      t.string :starts_at
      t.string :ends_at

      t.timestamps
    end


    create_table :deals do |t|

      t.string :title
      t.text   :description
      t.string :image_url
      t.belongs_to :dealable, polymorphic: true, index: true
      t.string :starts_at
      t.string :ends_at

      t.timestamps
    end
 

    create_table :ads do |t|

      t.string :title
      t.text   :description
      t.string :image_url
      t.belongs_to :adable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
