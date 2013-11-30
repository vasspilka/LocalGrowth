class FoodCategoriesController < ApplicationController
  
  def show
  	@food_categories = FoodCategory.all
  	@food_shops = FoodShop.page(params[:page]).per_page(5).find_all_by_food_category_id(params[:id])
  	@food_category = FoodCategory.find(params[:id])
  	render :layout => 'shop_layout'
  end









end