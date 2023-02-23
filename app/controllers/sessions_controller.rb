class SessionsController < ApplicationController
  def index
  end

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
        log_in user
        flash[:notice] = "Login Successfully"
        redirect_to theaters_path
    
    else
      render 'new' ,status: :unprocessable_entity
    end
  end
  
  def destroy
    log_out if logged_in?
    flash[:notice] = "Logout Successfully"
    redirect_to root_path
  end
end




# -----------------------------------------------------------------------------

  # def log_in(user)
  #   # binding.pry
  #   session[:user_id] = user.id
  # end

  # def log_out
  #   session.delete(:user_id)
  #   @current_user = nil
  # end

  # def current_user
  #   @current_user ||= User.find_by(id: session[:user_id])
  # end



  # (helper_method :current_user) bcoz of that line this method is avaliable for all class   






  # def logged_in?
  #   !current_user.nil?
  # end


