class FunCategoriesController < ApplicationController
  
  def index
  	@categories = FunCategory.all
  	@shops = FunShop.page(params[:page])

    @title = "Διασκέδαση"
  	render "shared/categories_show.html.erb"
  end

  def show
  	@category = FunCategory.find(params[:id])
  	@categories = FunCategory.all
  	@shops = FunShop.page(params[:page]).where(fun_category_id: @category.id)

  	@title = "Διασκέδαση | #{@category.title}"
  	render "shared/categories_show.html.erb"
  end

end