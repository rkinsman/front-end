class LessonsController < ApplicationController
  protect_from_forgery

  def new
    @lesson = Lesson.new
  end

  def index
    @lessons = Lesson.all
  end

  def take
    @lesson = Lesson.find(params[:id])
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def edit
    @lesson = Lesson.find(params[:id])
    @question = Question.new
  end

  def update
    @lesson = Lesson.find(params[:id])
  end

  def create
    @lesson = Lesson.new
    @lesson.title = params[:lesson][:title]
    @lesson.save
    redirect_to lessons_path
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    redirect_to lessons_path
  end
end
