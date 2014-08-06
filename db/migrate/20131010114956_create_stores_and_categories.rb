class CreateStoresAndCategories < ActiveRecord::Migration
  def change

    create_table :entertainment_categories do |t|
      t.string :title

      t.timestamps
    end  

    create_table :entertainment_stores do |t|
      t.string :title
      t.references :entertainment_category, index: true
      t.text :description
      t.attachment :logo
      t.string :website_url
      t.string :working_hours
      t.integer :rating ,:limit => 1
      t.integer :points ,:default => 0
      
      t.timestamps
    end
  
    create_table :food_categories do |t|
      t.string :title

      t.timestamps
    end

    create_table :food_stores do |t|
      t.string :title
      t.references :food_category, index: true
      t.text :description
      t.attachment :logo
      t.string :website_url
      t.string :working_hours
      t.integer :min_order, :default => 5
      t.integer :points ,:default => 0
      t.integer :rating ,:limit => 1

      t.timestamps
    end

    create_table :other_categories do |t|
      t.string :title

      t.timestamps
    end

    create_table :other_stores do |t|
      t.string :title
      t.references :other_category, index: true
      t.text :description
      t.attachment :logo 
      t.string :website_url
      t.string :working_hours
      t.integer :points ,:default => 0
      t.integer :rating ,:limit => 1

      t.timestamps
    end  
  end  
end
