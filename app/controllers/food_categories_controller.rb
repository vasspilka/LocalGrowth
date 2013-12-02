class FoodCategoriesController < ApplicationController
  
  def show
  	@food_category = FoodCategory.find(params[:id])
  	@food_categories = FoodCategory.all
  	@food_shops = FoodShop.find_all_by_food_category_id(params[:id])
  end









end