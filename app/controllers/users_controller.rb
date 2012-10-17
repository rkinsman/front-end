class UsersController < ApplicationController
  protect_from_forgery

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    @user.save
  end
end
