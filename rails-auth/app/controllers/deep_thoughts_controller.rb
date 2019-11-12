class DeepThoughtsController < ApplicationController
  before_action :authorize!, only: [:new, :create]

  def new
    @deep_thought = DeepThought.new
  end

  def create
    @user = current_user

    new_thought = @user.deep_thoughts.build(deep_thought_params)

    if new_thought.valid?
      new_thought.save
      redirect_to user_path(current_user)
    else
      flash[:error] = "Sorry, invalid thought. No biggie, your thought was just wrong. Please include both a title and a body."
      redirect_to new_deep_thought_path
    end
  end

  private

  def deep_thought_params
    params.require(:deep_thought).permit(:title, :body)
  end
end
