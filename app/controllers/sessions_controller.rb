class SessionsController < ApplicationController

  def create
    if session[:name].nil? || session[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      binding.pry
    end
  end

  def new

  end

end
