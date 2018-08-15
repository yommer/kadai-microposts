class LikesController < ApplicationController
before_action :require_user_logged_in
 
  def create
    micropost=Micropost.find(params[:micropost_id])
    micropost.liking(current_user)
    flash[:success] = 'お気に入り登録しました。'
    redirect_to current_user
  end

  def destroy
    micropost=Micropost.find(params[:micropost_id])
    micropost.unlike(current_user)
    flash[:success] = 'お気に入り解除しました。'
    redirect_to current_user
  end
end