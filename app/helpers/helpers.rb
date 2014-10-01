helpers do
  def current_user
    session[:user_id]
  end

  def current_user_info
    User.find(current_user)
  end

end