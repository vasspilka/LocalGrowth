class EntertainmentStoresController < ApplicationController
  
  def show
  	@store = FunStore.find(params[:id])
  end

end