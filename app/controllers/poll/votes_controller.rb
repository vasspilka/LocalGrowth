class Poll::VotesController < ApplicationController
  
  def create
    @option = Poll::PollOption.find(params[:poll_vote][:poll_option_id])
    current_user.vote!(@option)
    respond_to do |format|
      format.html { redirect_to @option }
      format.js
    end
  end

  def destroy
    @poll = Poll::Poll.find(@vote.poll_id)
    current_user.unvote!(@poll)
    respond_to do |format|
      format.html { redirect_to @poll }
      format.js
    end
  end

end