class SessionsController < ApplicationController
  def new

  end
  
  def create
    render 'users/login.html.erb'
  end

  def destroy

  end
end
