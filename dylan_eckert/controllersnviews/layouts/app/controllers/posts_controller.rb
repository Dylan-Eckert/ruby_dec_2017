class PostsController < ApplicationController
  layout "three_col"
  def index
    @posts = Post.all
    puts @posts
    @users = User.all
  end
  def create
    Post.create(post_params)
    redirect_to "/posts"
  end
  private
  def post_params
    params.require(:post).permit(:title, :content, :user_id)
  end
end
