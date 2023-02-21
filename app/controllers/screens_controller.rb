class ScreensController < ApplicationController
  def index
    @screens = Screen.all
  end

  def show
    @screens = Screen.find(params[:theater_id ])
  end

  def new 
    @screens = Screen.new
  end
end
