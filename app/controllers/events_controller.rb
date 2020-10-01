class EventsController < ApplicationController
  def index
    @past_events = Event.past(Time.now)
    @upcoming_events = Event.upcoming(Time.now)
  end

  def new
    @event = current_user.events.build
  end

  def create
    @event = current_user.events.build(event_params)
    redirect_to @event if @event.save
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
