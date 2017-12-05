class UsersController < ApplicationController
  def index

  end

  def create
    @user = User.create(user_params)

    if @user.valid?
      session[:count] ||= 0
      session[:count] += 1
      session[:user] = @user
      redirect_to '/result'
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to '/'
    end

  end

  def result
    @user = session[:user]
    flash[:success] = "Thanks for submitting this form! You have submitted #{session[:count]} form entries so far."

  end

  private
    def user_params
      params.require(:user).permit(:name, :location, :language, :comment)
    end
end
