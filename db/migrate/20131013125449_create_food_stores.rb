class CreateFoodStores < ActiveRecord::Migration
  def change
    create_table :stores_food_categories do |t|
      t.string :title

      t.timestamps
    end

    create_table :tags_food_tags do |t|
      t.string :title

      t.timestamps
    end

    create_table :stores_food_stores do |t|
      t.string :title
      t.references :food_category, index: true
      t.integer :points ,:default => 0
      t.text :description
      t.string :logo_url
      t.string :address
      t.string :website_url
      t.string :working_hours
      t.integer :rating ,:limit => 1
      t.integer :min_order, :default => 5

      t.timestamps
    end

    create_table :food_taggings do |t|
      t.belongs_to :food_tag, index: true
      t.belongs_to :food_store, index: true

      t.timestamps
    end
  end
end
