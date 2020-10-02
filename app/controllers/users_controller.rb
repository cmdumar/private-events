class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def index
    @users = User.all
  end

  def show
    @past_events = current_user.events_attended.past(Time.now)
    @upcoming_events = current_user.events_attended.upcoming(Time.now)
    @cu_events = current_user.events
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to events_path
      else
        render :new
      end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.fetch(:user, {}).permit(:email, :username)
  end
end
