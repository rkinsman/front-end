class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
    @user = session[:user] ? User.find(session[:user]) : User.new
  end
end
