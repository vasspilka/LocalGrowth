class FunCategoriesController < ApplicationController
  
  def show
  	@fun_categories = FunCategory.all
  	@fun_shops = FunShop.page(params[:page]).per_page(5).find_all_by_fun_category_id(params[:id])
  	@fun_category = FunCategory.find(params[:id])
  	render :layout => 'shop_layout'
  end









end