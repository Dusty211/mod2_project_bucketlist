
class SessionsController < ApplicationController

  def new
    # @user = User.new
  end

  def create

    return redirect_to(controller: 'sessions', action: 'new') if !params[:username] || params[:username].empty? || !params[:password] || params[:password].empty?
    session[:username] = params[:username]
    session[:password] = params[:password]
    redirect_to controller: 'application', action: 'hello'
  end

  def destroy
    session.delete :username
    redirect_to controller: 'sessions', action: 'new'
  end

end