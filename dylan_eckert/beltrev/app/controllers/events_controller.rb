class EventsController < ApplicationController
  before_action :event_auth, except: [:index, :show, :create]
  def index
    @nearme = Event.where(state: current_user.state)
    @oostate = Event.where.not(state: current_user.state)
  end
  def show
    @event = Event.find(params[:id])
  end
  def create
    event = Event.create(event_params)

    if event.valid?
      return redirect_to events_path
    else
      flash[:errors] = event.errors.full_messages
      return redirect_back fallback_location: new_event_path
    end
  end
  def edit
    @event = Event.find(params[:id])
  end
  def update
    event = Event.find(params[:id])
    event.update(event_params)
    redirect_to event_path event.id
  end
  def destroy
    event = Event.find(params[:id])
    event.destroy
    redirect_to events_path
  end

  private
    def event_params
      params.require(:event).permit(:name, :date, :location, :state).merge(user: current_user)
    end
    def event_auth
      @event = Event.find(params[:id])
      if @event.user.id != session[:user_id]
        # anything put into params or forms are treated as strings, so basically, session[:user_id] is a true integer because it comes from the user object. params[:id] is a string and must be converted to an integer in order for the comparison to occur
        redirect_to events_path
      end
    end
end
