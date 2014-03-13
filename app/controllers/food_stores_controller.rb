class FoodStoresController < ApplicationController
  
  def show
  	@store = Stores::FoodStore.find(params[:id])
  end

end