class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def contact
    @feedback_message = FeedbackMessage.new
  end
  
  def about
  end

  def info
  end

  def legal
  end
  
end
