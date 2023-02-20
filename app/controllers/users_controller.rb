class UsersController < ApplicationController
  def index
  end

  def new
    @users = User.new
  end

  def create 
    @users = User.new(user_param)
    if@users.save
      # flash[:success] = "Welcome to the Sample App!"
      redirect_to sessions_new_path
    else
      render 'new'
    end
  end

  private
  def user_param
    params.require(:user).permit(:email,:password,:password_confirmation)
  end
end
