module ApplicationHelper

  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end

  def authorize!
    # bounce you back to login if you're not logged in
    if !logged_in?
      flash[:notice] = "Sorry, you must be logged in to do that."
      redirect_to login_path
    end
  end

  def id_matches_current_user?(id)
    p "USER ID FROM PARAMS IS #{id}"
    p current_user.id
    id.to_i == current_user.id
  end
end
