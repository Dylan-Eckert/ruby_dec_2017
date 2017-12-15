class SecretsController < ApplicationController
  def index
    @secrets = Secret.all
    # this is to get all secrets, I then have
  end
  def create
    secret = Secret.new secret_params
    unless secret.save
      flash[:errors] = secret.errors.full_messages
    end
    redirect_to user_path current_user.id
  end
  def destroy
    @secret = Secret.find(params[:id])
    @secret.destroy if @secret.user === current_user
    redirect_to user_path current_user.id
  end
  private
    def secret_params
      params.require(:secret).permit(:content).merge(user: current_user)
      # make strong params for secret, including content and merging the user that created it by using my application controller's method current_user to find the current user logged in to the session
    end
end
