class ClockEventsController < ApplicationController
  def index
    @user_events =  Current.user&.clock_events
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
end
