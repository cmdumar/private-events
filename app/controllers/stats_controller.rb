class StatsController < ApplicationController
  def index
    
  end

  def new
   @stat = Stat.new
  end

  def create
  @stat = Stat.create(stat_params)
  if @stat.save
    redirect_to "/welcome"
  end
  end

  private

  def stat_params
    params.fetch(:stat, {}).permit(:attendee, :attended_event)
  end

end
