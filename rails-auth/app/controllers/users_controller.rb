class UsersController < ApplicationController
  before_action :authorize!, only: [:index, :show]

  def new
    p session[:user_id]
    @user = User.new
  end

  def create
    user = User.create(user_params)
    session[:user_id] = user.id
    redirect_to user_path(user)
  end

  def show
    if id_matches_current_user?(params[:id])
      @user = User.find_by(id: params[:id])
      render :show
    else
      flash[:notice] = "ah ah ah! Not THAT user, you sneaky"
      redirect_to user_path(session[:user_id])
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
