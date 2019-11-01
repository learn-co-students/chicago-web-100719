class ChoppersController < ApplicationController

  def index
    @choppers = Chopper.all
  end

  def about
    render :aboutpage
  end

  def show
    @chopper = Chopper.find(params[:id])
  end


end
