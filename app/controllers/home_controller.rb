class HomeController < ApplicationController
  def index
    if session[:user_id]
      redirect_to clock_events_path
    end
  end
end
