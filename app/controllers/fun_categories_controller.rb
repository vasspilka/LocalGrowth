class FunCategoriesController < ApplicationController
  
  def show
  	@fun_categories = FunCategory.all
  	@fun_shops = FunShop.find_all_by_fun_category_id(params[:id])
  	@fun_category = FunCategory.find(params[:id])
  end









end