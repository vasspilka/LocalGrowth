class Store::OtherCategoriesController < ApplicationController
  
  def index
  	@categories = Store::OtherCategory.all
  	@stores = Store::OtherStore.page(params[:page]).order("points desc")

  	@title = I18n.t "other"
  	render "shared/categories_show.html.erb"
  end

  def show
  	@category = Store::OtherCategory.find(params[:id])
  	@categories = Store::OtherCategory.all
  	@stores = Store::OtherStore.page(params[:page]).where(other_category_id: @category.id).order("points desc")

  	@title = I18n.t("other") + " | #{@category.title}"
  	render "shared/categories_show.html.erb"
  end

end