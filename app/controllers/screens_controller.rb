class ScreensController < ApplicationController
  def index
    @screens = Screen.all
  end

  def show
    @theater = Theater.find(params[:theater_id ])
    @screen = Screen.find(params[:id])
  end

  def new 
    @screens = Screen.new
  end
end
