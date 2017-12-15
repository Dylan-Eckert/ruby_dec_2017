class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :require_login

  def require_login
    return redirect_to new_session_path unless session[:user_id]
  end
  def current_user
    return User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
  helper_method :require_login
end
