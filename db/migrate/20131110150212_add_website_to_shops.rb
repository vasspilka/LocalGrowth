class AddWebsiteToShops < ActiveRecord::Migration
  def change
  	add_column :fun_shops, :website, :string
  	add_column :food_shops, :website, :string
  	add_column :other_shops, :website, :string
  end
end
