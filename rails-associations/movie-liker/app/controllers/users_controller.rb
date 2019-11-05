class UsersController < ApplicationController
  def new
    @user = User.new
    @movies = Movie.all
  end

  def create
    @user = User.create(user_params)
    redirect_to user_path(@user)
  end

  def show
    @user = User.find(params[:id])
  end

  private
  
  def user_params
    params.require(:user).permit(:name, :movie_id)
  end
end
