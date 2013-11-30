class OtherCategoriesController < ApplicationController
  
  def show
  	@other_categories = OtherCategory.all
  	@other_shops = OtherShop.page(params[:page]).per_page(5).find_all_by_other_category_id(params[:id])
  	@other_category = OtherCategory.find(params[:id])
  	render :layout => 'shop_layout'
  end









end