class ClockEventsController < ApplicationController
  before_action :find_user_event, only: [:edit, :update]

  def index
    @user_events =  Current.user&.clock_events
  end

  def edit
  end

  def update
    if @user_event.update(clock_params)
      redirect_to clock_events_path, notice: "Entry Successfully Edited"
    else
      flash[:alert]= @user_event.errors.full_messages.join(',')
      render :edit
    end
  end

  def clock_in
    ClockEvent.create(clock_in: Time.zone.now.to_datetime, user_id: session[:user_id])
    session[:last_clock] = "out"
    redirect_to clock_events_path, notice: "Successfully Clock In"
  end

  def clock_out
    ClockEvent.create(clock_out: Time.zone.now.to_datetime, user_id: session[:user_id], reason: params[:reason])
    session[:last_clock] = "in"
    redirect_to clock_events_path, notice: "Successfully Clock Out"
  end

  private
  def clock_params
    params.require(:clock_event).permit(:clock_in, :clock_out, :reason)
  end

  def find_user_event
    @user_event = ClockEvent.find(params[:id])
  end
end
