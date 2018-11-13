class SessionsController < ApplicationController
  # before_action :require_login
  # skip_before_action :require_login, only: [:create]


  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def new

  end

  def destroy
    session.clear unless session[:name].nil?
  end

  # def require_login
  #   redirect_to '/' unless current_user
  # end

end
