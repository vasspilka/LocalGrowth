class Stores::OtherCategoriesController < ApplicationController
  
  def index
  	@categories = Stores::OtherCategory.all
  	@stores = Stores::OtherStore.page(params[:page]).order("points desc")

  	@title = I18n.t "other"
  	render "shared/categories_show.html.erb"
  end

  def show
  	@category = Stores::OtherCategory.find(params[:id])
  	@categories = Stores::OtherCategory.all
  	@stores = Stores::OtherStore.page(params[:page]).where(other_category_id: @category.id).order("points desc")

  	@title = I18n.t("other") + " | #{@category.title}"
  	render "shared/categories_show.html.erb"
  end

end