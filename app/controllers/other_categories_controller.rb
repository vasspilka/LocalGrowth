class OtherCategoriesController < ApplicationController
  
  def index
  	@categories = OtherCategory.all
  	@stores = OtherStore.page(params[:page]).order("points desc")

  	@title = "Άλλα"
  	render "shared/categories_show.html.erb"
  end

  def show
  	@category = OtherCategory.find(params[:id])
  	@categories = OtherCategory.all
  	@stores = OtherStore.page(params[:page]).where(other_category_id: @category.id).order("points desc")

  	@title = "Άλλα | #{@category.title}"
  	render "shared/categories_show.html.erb"
  end

end