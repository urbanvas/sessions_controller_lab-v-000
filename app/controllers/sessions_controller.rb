class SessionsController < ApplicationController
  def new
  end

  def create
    binding.pry
    if !params[:name] || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :username
  end
end
