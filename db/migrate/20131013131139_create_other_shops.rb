class CreateOtherShops < ActiveRecord::Migration
  def change
    create_table :other_categories do |t|
      t.string :title

      t.timestamps
    end

    create_table :other_subcategories do |t|
      t.string :title

      t.timestamps
    end

    create_table :other_shops do |t|
      t.string :title
      t.references :other_category, index: true
      t.text :description
      t.string :logo_url
      t.string :address
      t.string :website_url
      t.string :working_hours
      t.integer :points ,:default => 0
      t.integer :rating ,:limit => 1

      t.timestamps
    end
    
    create_table :other_subcategorizations do |t|
      t.belongs_to :other_subcategory, index: true
      t.belongs_to :other_shop, index: true

      t.timestamps
    end

  end
end
