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
    @lesson = Lesson.find(params[:id])
    respond_with @lesson
  end

  def update
    @lesson = Lesson.find(params[:id])
    @lesson.update_attributes(params[:lesson] || JSON.parse(params.first.first))
    respond_with @lesson do |lesson|
      lesson.json { render json: @lesson.to_json}
    end
  end

  def create
    @lesson = Lesson.new(params[:lesson] || JSON.parse(params.first.first))
    @lesson.save
    respond_with @lesson
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    respond_with @lesson
  end
end
