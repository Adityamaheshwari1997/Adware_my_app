class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end
  def create 

  def new
    @user = User.new
  end

    @user = User.new(user_param)
    if@user.save
      redirect_to sessions_new_path
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:user_id])
    @movie =Movie.find(params[:movie_id])
    @theater = Theater.find(params[:theater_id])
    @screen = Screen.find(params[:screen_id])
  end

  def update
    @user = User.find(params[:user_id])
    if @user.update(cus_params)
      redirect_to user_path(@user)
    end
  end




  private
  def user_param
    params.require(:user).permit(:email,:password,:password_confirmation)
  end

  def cus_params
    params.require(:user).permit(:name,:theater_id,:screen_id,:movie_id)
  end

end
