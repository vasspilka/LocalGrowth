class VotesController < ApplicationController
  
  def create
    @option = Option.find(params[:vote][:option_id])
    current_user.attend!(@option)
    respond_to do |format|
      format.html { redirect_to @poll }
      format.js
    end
  end

  def destroy
    @vote = Attending.find(params[:id])
    @poll = Poll.find(@vote.poll_id)
    current_user.unattend!(@poll)
    respond_to do |format|
      format.html { redirect_to @poll }
      format.js
    end
  end

end