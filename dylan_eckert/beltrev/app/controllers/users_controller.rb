class UsersController < ApplicationController
  skip_before_action :require_login, only: [:create]
  before_action :user_auth, except: [:create]
  def create
    user = User.create(user_params)
    if user.valid?
      session[:user_id] = user.id
      return redirect_to events_path
    else
      flash[:errors] = user.errors.full_messages
      return redirect_back fallback_location: root_path
    end
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to events_path
  end
  def destroy
    user = User.find(params[:id])
    user.destroy
    reset_session
    redirect_to root_path
  end

  private
    def user_params
      params.require(:user).permit(:fname, :lname, :email, :password, :password_confirmation, :location, :state)
    end
    def user_auth
      if params[:id].to_i != session[:user_id]
        # anything put into params or forms are treated as strings, so basically, session[:user_id] is a true integer because it comes from the user object. params[:id] is a string and must be converted to an integer in order for the comparison to occur
        redirect_to events_path
      end
    end
end
