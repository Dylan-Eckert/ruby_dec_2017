class UsersController < ApplicationController
  layout "two_col"
  def index
    @users = User.all
  end
  def create
    User.create(user_params)
    redirect_to "/users"
  end
  private
  def user_params
    params.require(:user).permit(:fname, :lname, :language)
  end
end
