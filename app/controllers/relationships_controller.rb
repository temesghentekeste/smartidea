class RelationshipsController < ApplicationController

  def create
    # user = User.find_username(params[:id])
    # debugger
    user = User.find(params[:followed_id].keys[0])
    current_user.follow(user)
    redirect_to profile_path(current_user.username)
  end
  
  def destroy
    user = Relationship.find(params[:id]).followed 
    current_user.unfollow(user)
    redirect_to profile_path(current_user.username)
  end
  
end