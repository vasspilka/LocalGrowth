class Store::EntertainmentCategoriesController < ApplicationController

  def index
  	@categories = Store::EntertainmentCategory.all
  	@stores = Store::EntertainmentStore.page(params[:page]).order("points desc")

    @title = I18n.t "entertainment"
  	render "shared/categories_show.html.erb"
  end

  def show
  	@category = Store::EntertainmentCategory.find(params[:id])
  	@categories = Store::EntertainmentCategory.all
  	@stores = Store::EntertainmentStore.page(params[:page]).where(entertainment_category_id: @category.id).order("points desc")

  	@title = I18n.t("entertainment") + " | #{@category.title}"
  	render "shared/categories_show.html.erb"
  end

end