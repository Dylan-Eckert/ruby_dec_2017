class LikesController < ApplicationController
  def create
    Like.create(like_params)
    redirect_to secrets_path
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy if session[:user_id] === @like.user_id
    # this is a check to make sure that if somehow a user who didnt create the like tries to delete the like(unlike), the destroy method will not run
    redirect_to secrets_path
  end
  private
    def like_params
      params.require(:like).permit(:secret_id).merge(user: current_user)
    end
end
