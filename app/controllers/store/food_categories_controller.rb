class Store::FoodCategoriesController < ApplicationController

  def index
  	@categories = Store::FoodCategory.all
  	@stores = Store::FoodStore.page(params[:page]).order("points desc")

  	@title = I18n.t "food"
  	render "shared/categories_show.html.erb"
  end

  def show
  	@category = Store::FoodCategory.find(params[:id])
  	@categories = Store::FoodCategory.all
  	@stores = Store::FoodStore.page(params[:page]).where(food_category_id: @category.id).order("points desc")

  	@title = I18n.t("food") + " | #{@category.title}"
  	render "shared/categories_show.html.erb"
  end


end