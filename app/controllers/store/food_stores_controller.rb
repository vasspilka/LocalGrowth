class Store::FoodStoresController < ApplicationController
  
  def show
  	@store = Store::FoodStore.find(params[:id])
  end

end