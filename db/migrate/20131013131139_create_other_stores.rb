class CreateOtherStores < ActiveRecord::Migration
  def change
    create_table :other_categories do |t|
      t.string :title

      t.timestamps
    end

    create_table :other_tags do |t|
      t.string :title

      t.timestamps
    end

    create_table :other_stores do |t|
      t.string :title
      t.references :other_category, index: true
      t.integer :points ,:default => 0
      t.text :description
      t.string :logo_url
      t.string :address
      t.string :website_url
      t.string :working_hours
      t.integer :rating ,:limit => 1

      t.timestamps
    end
    
    create_table :other_taggings do |t|
      t.belongs_to :other_subcategory, index: true
      t.belongs_to :other_store, index: true

      t.timestamps
    end

  end
end
