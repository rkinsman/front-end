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
    cookies.signed[:user] = { :value => @user.object_id, :expires => 2.hour.from_now }
    redirect_to '/'
  end

  def login
    @user = User.find_by(email: params[:email])
    if @user 
      cookies.signed[:user] = { :value => @user.object_id, :expires => 2.hour.from_now }
    else
      flash[:error] = "User does not exist"
    end
    redirect_to '/'
  end

  def logout
    cookies.delete :user
    redirect_to '/'
  end
end
