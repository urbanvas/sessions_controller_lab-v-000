class SessionsController < ApplicationController
  def new
  end

  def create
    if session[:username]
      session[:username] = params[:username]
      redirect_to '/'
    else
      redirect_to :new

  end

  def destroy
    session.delete :username
  end
end
