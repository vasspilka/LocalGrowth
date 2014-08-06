class Store::OtherStoresController < ApplicationController
  
  def show
  	@store = Store::OtherStore.find(params[:id])
  end

end