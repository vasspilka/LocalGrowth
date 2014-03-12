class EntertainmentCategoriesController < ApplicationController
  
  def index
  	@categories = EntertainmentCategory.all
  	@stores = EntertainmentStore.page(params[:page]).order("points desc")

    @title = "Διασκέδαση"
  	render "shared/categories_show.html.erb"
  end

  def show
  	@category = EntertainmentCategory.find(params[:id])
  	@categories = EntertainmentCategory.all
  	@stores = EntertainmentStore.page(params[:page]).where(entertainment_category_id: @category.id).order("points desc")

  	@title = "Διασκέδαση | #{@category.title}"
  	render "shared/categories_show.html.erb"
  end

end