class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:screen_id])
  end

  def new
    @users = User.new
  end

  def create 
    @user = User.new(user_param)
    if@user.save
      # flash[:success] = "Welcome to the Sample App!"
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

    binding.pry

    if @user.update(cus_params)
      redirect_to screens_index_path
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
