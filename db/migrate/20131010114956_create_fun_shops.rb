class CreateFunShops < ActiveRecord::Migration
  def change
    create_table :fun_categories do |t|
      t.string :title

      t.timestamps
    end  

    create_table :fun_subcategories do |t|
      t.string :title

      t.timestamps
    end

    create_table :fun_shops do |t|
      t.string :title
      t.references :fun_category
      t.integer :points ,:default => 0
      t.text :description
      t.string :logo_url
      t.string :address
      t.string :website_url
      t.string :working_hours
      t.integer :rating ,:limit => 1
      
      t.timestamps
    end
   
    create_table :fun_subcategorizations do |t|
      t.belongs_to :fun_shop, index: true
      t.belongs_to :fun_subcategory, index: true

      t.timestamps
    end
  end
end
