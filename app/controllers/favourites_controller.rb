class FavouritesController < ApplicationController
  before_action :require_user_logged_in

  def create
    @user_id = session[:id]
    @micropost_id = Micropost.find(params[:id]).id 
    @favourite = Favourite.new(micropost_id: @micropost_id, user_id: @user_id)
  
    if @favourite.save
    redirect_to user
    end
  end

  def destroy
    @favourites = Favourite.find(params[:id])
    if @favourite.destroy
    redirect_to user
    end
  end
end



 