class AttendeesController < ApplicationController
  before_action :user_auth
  def create
    Attendee.create(attendee_params)
    redirect_to events_path
  end

  def destroy
    @attendee = Attendee.where(event_id: params[:id], user_id: session[:user_id])
    @attendee.first.destroy if @attendee != nil
    # .first is needed because where returns an array, even if it is just an array of one thing
    redirect_to events_path
  end
  private
    def attendee_params
      params.require(:attendee).permit(:event_id).merge(user: current_user)
    end
end
