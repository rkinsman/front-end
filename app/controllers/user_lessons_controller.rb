class UserLessonsController < ApplicationController
  protect_from_forgery
  respond_to :html, :json

  def index
    @user = User.find(params[:user_id])
    @u_lessons = @user.lessons
    respond_with @u_lessons
  end

  def new
    @u_lesson = UserLesson.new(params[:user_id])
  end

  def create
    @user = User.find(params[:user_id])
    @u_lesson = @user.lessons.new(params[:lesson] || JSON.parse(params.first.first))
    @u_lesson.save
    respond_with @u_lesson do |lesson|
      lesson.json { render json: @u_lesson.to_json }
    end
  end

  def show
    @u_lesson = User.find(params[:user_id]).lessons.find(params[:id])
    respond_with @u_lesson
  end

  def destroy
    @u_lesson = User.find(params(:user_id)).find(params(:lesson_id))
    @u_lesson.destroy
    respond_with @u_lesson
  end

  def update
    @u_lesson = UserLesson.find(params[:id])
    @u_lesson.update_attributes(params[:lesson] || JSON.parse(params.first.first))
    respond_with @u_lesson do |lesson|
      lesson.json { render json: @u_lesson.to_json}
    end
  end
end
