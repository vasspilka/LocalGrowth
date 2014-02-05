class FoodCategoriesController < ApplicationController
  
  # Idea!! Add id for like routing?


  def index
  	@categories = FoodCategory.all
  	@shops = FoodShop.page(params[:page]).order("points desc")

  	@title = "Φαγητό"
  	render "shared/categories_show.html.erb"
  end

  def show
  	@category = FoodCategory.find(params[:id])
  	@categories = FoodCategory.all
  	@shops = FoodShop.page(params[:page]).where(food_category_id: @category.id).order("points desc")

  	@title = "Φαγητό | #{@category.title}"
  	render "shared/categories_show.html.erb"
  end

end