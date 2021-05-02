class UsersController < ApplicationController
  def create
    @user = User.new(user_params)

    if @user.save
      flash[:message] = "User successfully created"
      redirect_to login_path
    else
      @errors = @user.errors.full_messages
    end
  end

  private

  def user_params
    params.require(:user).permit(:firstname, :lastname, :email, :password)
  end
end
