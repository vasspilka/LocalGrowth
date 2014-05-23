class Stores::EntertainmentCategoriesController < ApplicationController

  def index
  	@categories = Stores::EntertainmentCategory.all
  	@stores = Stores::EntertainmentStore.page(params[:page]).order("points desc")

    @title = I18n.t "entertainment"
  	render "shared/categories_show.html.erb"
  end

  def show
  	@category = Stores::EntertainmentCategory.find(params[:id])
  	@categories = Stores::EntertainmentCategory.all
  	@stores = Stores::EntertainmentStore.page(params[:page]).where(entertainment_category_id: @category.id).order("points desc")

  	@title = I18n.t("entertainment") + " | #{@category.title}"
  	render "shared/categories_show.html.erb"
  end

end