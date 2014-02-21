class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|

      t.boolean :active, :default => false
      t.string :title
      t.belongs_to :eventable, polymorphic: true, index: true
      t.integer :points_value, :default => 30
      t.text   :description
      t.string :image_url
      t.date :starts_at
      t.date :ends_at
      t.integer :points ,:default => 0

      t.timestamps
    end


    create_table :deals do |t|

      t.boolean :active, :default => false
      t.string :title
      t.belongs_to :dealable, polymorphic: true, index: true
      t.integer :points_value, :default => 30
      t.text   :description
      t.string :image_url
      t.date :starts_at
      t.date :ends_at

      t.timestamps
    end
 

    create_table :ads do |t|

      t.boolean :active, :default => false
      t.string :title
      t.belongs_to :adable, polymorphic: true, index: true
      t.integer :points_value, :default => 20
      t.text   :description
      t.string :image_url

      t.timestamps
    end
  end
end
