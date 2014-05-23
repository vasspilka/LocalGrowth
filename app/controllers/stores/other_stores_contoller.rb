class Stores::OtherStoresController < ApplicationController
  
  def show
  	@store = Stores::OtherStore.find(params[:id])
  end

end