class Store::EntertainmentStoresController < ApplicationController
  
  def show
  	@store = Store::EntertainmentStore.find(params[:id])
  end

end