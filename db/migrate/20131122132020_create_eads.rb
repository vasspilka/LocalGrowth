class CreateEads < ActiveRecord::Migration
  def change
    create_table :events do |t|

      t.belongs_to :eventable, polymorphic: true, index: true
      t.string :title
      t.date :starts_at
      t.date :ends_at
      t.text   :description
      t.string :image_url
      t.boolean :active, :default => false
      t.integer :points_value, :default => 30
      t.integer :points ,:default => 0

      t.timestamps
    end

    create_table :ads do |t|

      t.belongs_to :adable, polymorphic: true, index: true
      t.string :title
      t.date :starts_at
      t.date :ends_at
      t.text   :description
      t.string :image_url
      t.integer :points_value, :default => 20
      t.boolean :active, :default => false

      t.timestamps
    end

    create_table :deals do |t|

      t.belongs_to :dealable, polymorphic: true, index: true
      t.date :starts_at
      t.date :ends_at
      t.string :title
      t.text   :description
      t.string :image_url
      t.integer :points_value, :default => 30
      t.boolean :active, :default => false

      t.timestamps
    end
 

  end
end
