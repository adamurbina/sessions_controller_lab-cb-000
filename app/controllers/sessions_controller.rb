class SessionsController < ApplicationController

  def create
    if session[:name].nil? || session[:name].empty?
      redirect_to '/new'
    end
  end

  def new

  end

end
