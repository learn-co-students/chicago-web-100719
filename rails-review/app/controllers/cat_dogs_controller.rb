class CatDogsController < ApplicationController
  def new
    @cat_dog = CatDog.new
    @pet_beds = PetBed.all
  end

  def create
    c = CatDog.create(cat_dog_params)
    redirect_to cat_dog_path(c)
  end

  def show
    @cat_dog = CatDog.find_by(id: params[:id])

  end

  private

  def cat_dog_params
    params.require(:cat_dog).permit(:name, :age, rented_bed_ids: [])
  end
end
