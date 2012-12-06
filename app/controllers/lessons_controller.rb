class LessonsController < ApplicationController
  protect_from_forgery
  respond_to :html, :json

  def new
    @lesson = Lesson.new
  end

  def index
    @lessons = Lesson.all
    respond_with @lessons
  end

  def show
    @user = User.find(params[:user_id])
    @lesson = @user.completedLessons
    respond_with @lesson
  end

  def update
    @lesson = Lesson.find(params[:id])
  end

  def create
    @lesson = Lesson.new
    @lesson.title = params[:lesson][:title]
    @lesson.save
    respond_with @lesson
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    respond_with @lesson
  end
end
