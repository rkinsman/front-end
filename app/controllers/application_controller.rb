class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
    @user = cookies[:user] ? User.find(cookies[:user]) : User.new
  end
end
