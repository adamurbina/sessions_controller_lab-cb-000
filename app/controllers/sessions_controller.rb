class SessionsController < ApplicationController
  

  def create
    if session[:name].nil? || session[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
    end
  end

  def new

  end

  def require_login
    redirect_to '/login' unless current_user
  end

end
