class EntertainmentStoresController < ApplicationController
  
  def show
  	@store = EntertainmentStore.find(params[:id])
  end

end