class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:create]


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
    redirect_to '/' unless current_user
  end

end
