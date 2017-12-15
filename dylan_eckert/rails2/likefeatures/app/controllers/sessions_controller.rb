class SessionsController < ApplicationController
  skip_before_action :require_login, except: [:destroy]
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    # find by email
    if user
      if user.try(:authenticate, params[:password])
        # if the user matches a user in the database, set the session id to the user being authenticated
        session[:user_id] = user.id
        return redirect_to user_path user.id
      end
      flash[:errors] = ["Invalid password"]
    else
      flash[:errors] = ["Invalid email"]
    end
    return redirect_back fallback_location: new_session_path
  end

  def destroy
    reset_session
    redirect_to "/sessions/new"
  end
end
