
class ApplicationController < ActionController::Base

  def verify
    if !(User.find_by(username: session[:username]) && session[:password] == User.find_by(username: session[:username]).password)
      redirect_to controller: 'sessions', action: 'new'
    else
      redirect_to user_path(User.find_by(username: session[:username]))
    end
  end

  def logout

  end

end
