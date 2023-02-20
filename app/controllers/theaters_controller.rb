class TheatersController < ApplicationController
  def index
    @theaters = Theater.all
  end

  def show 
    @theaters = Theater.find(params[:id])
  end
end
