class QuestionsController < ApplicationController
  def new
    @question = Question.new
  end

  def edit
  end

  def show
  end

  def create
    @lesson = Lesson.find(params[:question][:lesson_id])
    @lesson.questions.push(Question.new(params[:question][:qText], params[:question][:aText], params[:question][:correctAnswer]))
    # debugger
    @lesson.save
    redirect_to edit_lesson_path(@lesson)
  end
end
