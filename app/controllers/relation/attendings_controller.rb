class Relation::AttendingsController < ApplicationController
  #before_action :signed_in_user

  def create
    @event = Event.find(params[:attending][:event_id])
    current_user.attend!(@event)
    respond_to do |format|
      format.html { redirect_to @event }
      format.js
    end
  end

  def destroy
    @attending = Attending.find(params[:id])
    @event = Event.find(@attending.event_id)
    current_user.unattend!(@event)
    respond_to do |format|
      format.html { redirect_to @event }
      format.js
    end
  end

end