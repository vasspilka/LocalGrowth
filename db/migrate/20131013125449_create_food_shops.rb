class CreateFoodShops < ActiveRecord::Migration
  def change
    create_table :food_categories do |t|
      t.string :title

      t.timestamps
    end

    create_table :food_subcategories do |t|
      t.string :title

      t.timestamps
    end

    create_table :food_shops do |t|
      t.string :title
      t.references :food_category, index: true
      t.text :description
      t.string :logo_url
      t.string :address
      t.string :working_hours
      t.integer :points ,:default => 0
      t.integer :rating ,:limit => 1
      t.integer :min_order, :default => 5

      t.timestamps
    end

    create_table :food_subcategorizations do |t|
      t.belongs_to :food_subcategory, index: true
      t.belongs_to :food_shop, index: true

      t.timestamps
    end
  end
end
