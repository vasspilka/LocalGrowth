class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|

      t.string :title
      t.text   :description
      t.string :image_url
      t.belongs_to :eventable, polymorphic: true, index: true
      t.string :starts_at
      t.string :ends_at
      t.integer :points_value, :default => 30
      t.integer :points ,:default => 0

      t.timestamps
    end


    create_table :deals do |t|

      t.string :title
      t.text   :description
      t.string :image_url
      t.belongs_to :dealable, polymorphic: true, index: true
      t.string :starts_at
      t.string :ends_at
      t.integer :points_value, :default => 30

      t.timestamps
    end
 

    create_table :ads do |t|

      t.string :title
      t.text   :description
      t.string :image_url
      t.belongs_to :adable, polymorphic: true, index: true
      t.integer :points_value, :default => 20

      t.timestamps
    end
  end
end
