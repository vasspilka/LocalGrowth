class FoodStoresController < ApplicationController
  
  def show
  	@store = FoodStore.find(params[:id])
  end

end