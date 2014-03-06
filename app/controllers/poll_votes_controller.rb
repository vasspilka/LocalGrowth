class PollVotesController < ApplicationController
  
  def create
    @option = PollOption.find(params[:poll_vote][:poll_option_id])
    current_user.vote!(@option)
    respond_to do |format|
      format.html { redirect_to @option }
      format.js
    end
  end

  def destroy
    @poll = Poll.find(@vote.poll_id)
    current_user.unvote!(@poll)
    respond_to do |format|
      format.html { redirect_to @poll }
      format.js
    end
  end

end