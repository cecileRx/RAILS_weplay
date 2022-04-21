class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @user = current_user
    @event = @user.events.new(event_parameters)
    if @event.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def event_parameters
    params.require(:event).permit(:title, :content, :start_time, :end_time, :user_id)
  end
end


