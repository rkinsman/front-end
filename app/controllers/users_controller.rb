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
    session[:user] = @user.id
    redirect_to '/'
  end

  def login
    @user = User.find_by(email: params[:email])
    if @user 
      session[:user] = @user.id
    else
      flash[:error] = "User does not exist"
    end
    redirect_to '/'
  end

  def logout
    session.delete :user
    redirect_to '/'
  end
end
