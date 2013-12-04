class OtherCategoriesController < ApplicationController
  
  def index
  	@categories = OtherCategory.all
  	@shops = OtherShop.page(params[:page])

  	@title = "Άλλα"
  	render "shared/categories_show.html.erb"
  end

  def show
  	@category = OtherCategory.find(params[:id])
  	@categories = OtherCategory.all
  	@shops = OtherShop.page(params[:page]).where(other_category_id: @category.id)

  	@title = "Άλλα | #{@category.title}"
  	render "shared/categories_show.html.erb"
  end

end