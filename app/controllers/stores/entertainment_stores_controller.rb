class Stores::EntertainmentStoresController < ApplicationController
  
  def show
  	@store = Stores::EntertainmentStore.find(params[:id])
  end

end