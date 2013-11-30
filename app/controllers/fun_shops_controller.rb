class FunShopsController < ApplicationController
  
  def show
  	@fun_shop = FunShop.find(params[:id])
  end

end