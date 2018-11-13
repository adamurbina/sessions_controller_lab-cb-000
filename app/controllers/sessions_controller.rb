class SessionsController < ApplicationController

  def create
    if session[:name].nil?
      redirect_to '/new'
    end
  end

end
