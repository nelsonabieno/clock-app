class ApplicationController < ActionController::Base
  before_action :set_current_user

  def set_current_user
    if session[:user_id]
      Current.user = find_user
      if find_user&.clock_events&.last&.clock_in.present?
        session[:last_clock] = "in"
      elsif find_user&.clock_events&.last&.clock_out.present?
        session[:last_clock] = "out"
      else
        session[:last_clock] = nil
      end
    end
  end

  def find_user
    User.find_by(id: session[:user_id])
  end
end
