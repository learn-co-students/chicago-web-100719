class ChoppersController < ApplicationController
  before_action :find_chopper, only: [:show, :edit, :update, :destroy]
  def index
    @choppers = Chopper.all
  end

  def about
    render :aboutpage
  end

  def show
  end

  def new
    # @chopper = Chopper.new
  end

  def create
    @chopper = Chopper.new(chopper_params)

    if @chopper.valid?
      @chopper.save
      redirect_to @chopper
    else
      redirect_to new_chopper_path
    end
  end

  def edit
  end

  def update
    @chopper.update(chopper_params)
    redirect_to @chopper
  end

  def destroy
    @chopper.destroy
    redirect_to choppers_path
  end

  private
  #strong params
  def chopper_params
    params.require(:chopper).permit(:name, :serial_num, :color, :seating_capacity)
  end

  def find_chopper
    @chopper = Chopper.find(params[:id])
  end

end
