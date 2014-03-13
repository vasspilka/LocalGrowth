class CreateEntertainmentStores < ActiveRecord::Migration
  def change
    create_table :stores_entertainment_categories do |t|
      t.string :title

      t.timestamps
    end  

    create_table :entertainment_tags do |t|
      t.string :title

      t.timestamps
    end

    create_table :stores_entertainment_stores do |t|
      t.string :title
      t.references :entertainment_category
      t.integer :points ,:default => 0
      t.text :description
      t.string :logo_url
      t.string :address
      t.string :website_url
      t.string :working_hours
      t.integer :rating ,:limit => 1
      
      t.timestamps
    end
   
    create_table :entertainment_taggings do |t|
      t.belongs_to :entertainment_store, index: true
      t.belongs_to :entertainment_tag, index: true

      t.timestamps
    end
  end
end
