class UsersController < ApplicationController
  before_action :new_user, only: [:sign_up, :login]

  def sign_up
  end

  def login
  end

  def authenticate
    @user = User.find_by(email: params[:user][:email])

    if @user.present? && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to clock_events_path, notice: "Successfully Logged In"
    else
      flash[:alert]= "Invalid username or password"
      render :login
    end
  end

  def logout
    if session[:user_id]
      session[:user_id] = nil
      redirect_to root_path, notice: "Logged Out"
    end
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to login_path, notice: "User successfully created"
    else
      render :sign_up
    end
  end

  private

  def new_user
    @user = User.new
  end

  def user_params
    params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation, :time_zone)
  end
end
