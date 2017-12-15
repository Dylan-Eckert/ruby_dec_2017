class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_email(params[:email])
    # find by email
    if @user && @user.authenticate(params[:password])
      # if the user matches a user in the database, set the session id to the user being authenticated
      session[:user_id] = @user.id
      redirect_to "/users/#{@user.id}"
    else
      flash[:errors] = ["Invalid username or password"]
      redirect_to "/sessions/new"
    end
  end

  def destroy
    reset_session
    redirect_to "/sessions/new"
  end
end
