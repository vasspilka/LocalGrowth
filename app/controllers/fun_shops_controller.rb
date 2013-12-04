class FunShopsController < ApplicationController
  
  def show
  	@shop = FunShop.find(params[:id])
  end

end