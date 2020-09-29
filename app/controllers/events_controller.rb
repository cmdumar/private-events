class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @user = current_user
    @event = @user.events.new
  end

  def create
    @user = current_user
    @event = @user.events.new(event_params)
    if @event.save
      redirect_to @event
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def attend
    @stat = Stat.new(attendee_id: params[:attendee_id], attended_event_id: params[:event_id])
    if @stat.save
      redirect_to events_path
    else
      render :show
    end
  end

  private

  def event_params
    params.fetch(:event, {}).permit(:date, :title, :description)
  end
end
