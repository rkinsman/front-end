class UsersController < ApplicationController
  protect_from_forgery
  respond_to :html, :json

  def index
    @users = User.all
    respond_with @users
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new (params[:user] || JSON.parse(params.first.first))
    @user.save
    session[:user] = @user.id
    respond_with @user
  end

  def show
    @user = User.find(params[:id])
    respond_with @user
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    respond_with @user
  end
  
  def update
    @user = User.find(params[:id])
    #HOLY CRAP THIS IS UGLY WHY WONT IT WORK PRETTY
    @user.update_attributes(params[:user] || JSON.parse(params.first.first))
    respond_with @user do |user|
      user.json { render json: @user.to_json }
    end
  end

  def login
    @user = User.find_by(email: params[:email])
    if @user 
      session[:user] = @user.id
      cookies[:user_id] = @user.id
    else
      flash[:error] = "User does not exist"
    end
    redirect_to '/'
  end

  def logout
    session.delete :user
    cookies.delete :user_id
    redirect_to '/'
  end
end
