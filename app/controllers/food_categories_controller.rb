class FoodCategoriesController < ApplicationController

  def index
  	@categories = Stores::FoodCategory.all
  	@stores = Stores::FoodStore.page(params[:page]).order("points desc")

  	@title = I18n.t "food"
  	render "shared/categories_show.html.erb"
  end

  def show
  	@category = Stores::FoodCategory.find(params[:id])
  	@categories = Stores::FoodCategory.all
  	@stores = Stores::FoodStore.page(params[:page]).where(food_category_id: @category.id).order("points desc")

  	@title = I18n.t("food") + " | #{@category.title}"
  	render "shared/categories_show.html.erb"
  end

end