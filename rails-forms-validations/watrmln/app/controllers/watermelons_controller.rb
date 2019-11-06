class WatermelonsController < ApplicationController

  def new
  end

  def create
    @watermelon = Watermelon.new(watermelon_params)
    if @watermelon.save
      flash[:message] = "Success!"
      redirect_to @watermelon
    else
      flash[:errors] = @watermelon.errors.full_messages
      redirect_to new_watermelon_path
    end
  end

  def show
    @watermelon = Watermelon.find(params[:id])
  end

  private
  def watermelon_params
    params.require(:watermelon).permit(:nickname, :seedcount, :weight, :shape)
  end
end
