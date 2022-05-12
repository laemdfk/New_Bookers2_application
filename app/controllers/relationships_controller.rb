class RelationshipsController < ApplicationController

  before_action :authenticate_user!

  def create
    user = User.find(params[:user_id])
    current_user.follow(user)
    redirect_to request.referer
  end


  def destroy
    user = User.find(params[:user_id])
    cureent_user.unfollow(user)
    redirect_to request.referer
  end


  def followings
    user = User.find(params[:user_id])
    @users = user.followings
  end


  def follwers
    user = User.find(params[:user_id])
    @users = user.followers
  end

end
