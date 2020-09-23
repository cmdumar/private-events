class EventsController < ApplicationController
  before_action :current_user

  def new
    @event = current_user.events.new
  end

  def create
    @event = current_user.events.create(event_params)
  end

  def show
  end

  private

  def event_params
    params.require(:events).permit(:description)
  end
end
