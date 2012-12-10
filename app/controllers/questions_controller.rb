class QuestionsController < ApplicationController
  protect_from_forgery
  respond_to :html, :json

  def index
    @lesson = Lesson.find(params[:lesson_id])
    respond_with @lesson.questions
  end

  def show
    @lesson = Lesson.find(params[:lesson_id])
    @question = @lesson.questions.find(params[:id])
    respond_with @question
  end

  def create
    @lesson = Lesson.find(params[:lesson_id])
    @lesson.questions.create(params[:question] || JSON.parse(params.first.first))
    respond_with @lesson.questions.last
  end

  def edit
    #THIS DONT WORK
  end

  def destroy 
    @lesson = Lesson.find(params[:lesson_id])
    @question = @lesson.questions.find(params[:id])
    @question.destroy
    respond_with @question
  end

  def update
    @lesson = Lesson.find(params[:lesson_id])
    @question = @lesson.questions.find(params[:id])
    @question.update_attributes(params[:question] || JSON.parse(params.first.first))
    respond_with @question do |question|
      question.json { render json: @question.to_json}
    end
  end

#  def new
#    @question = Question.new
#  end
#
#  def edit
#  end
#
#  def show
#  end
#
#  def create
#   @lesson = Lesson.find(params[:question][:lesson_id])
#    @lesson.questions.push(Question.new(aText: params[:question][:qText], qText: params[:question][:aText], correctAnswer: params[:question][:correctAnswer]))
#    # debugger
#    @lesson.save
#    redirect_to edit_lesson_path(@lesson)
#  end

end
