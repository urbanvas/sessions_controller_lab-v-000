class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name]
      redirect_to '/login'
    else
      redirect_to '/login'
      session[:name] = params[:name]
      redirect_to '/'
    end

  end

  def destroy
    session.delete :username
  end
end
