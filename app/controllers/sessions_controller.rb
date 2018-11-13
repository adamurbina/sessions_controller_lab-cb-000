class SessionsController < ApplicationController

  def create
    if session[:name].nil? || session[:name].empty?
      redirect_to '/login'
    else
      byebug
      session[:name] = params[:name]
    end
  end

  def new

  end

end
