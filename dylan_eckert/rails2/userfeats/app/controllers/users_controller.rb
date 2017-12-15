class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  def new

  end

  def create
    user = User.create(user_params)
    if user.valid?
      session[:user_id] = user.id
      return redirect_to user_path user.id
    else
      flash[:errors] = user.errors.full_messages
      return redirect_back fallback_location: new_user_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end


  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
