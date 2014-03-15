class Relation::LikesController < ApplicationController
  #before_action :signed_in_user

  def create
    @likeable = params[:relation_like][:likeable_type].constantize.find(params[:relation_like][:likeable_id])
    current_user.like!(@likeable)
    respond_to do |format|
      format.html { redirect_to @likeable }
      format.js
    end
  end

  def destroy
    @like = Relation::Like.find(params[:id])
    @likeable_object = @like.likeable_type.constantize
    @likeable = @likeable_object.find(@like.likeable_id)
    current_user.unlike!(@likeable)
    respond_to do |format|
      format.html { redirect_to @likeable }
      format.js
    end
  end
end