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
    @lesson.questions.push(Question.new(aText: params[:question][:qText], qText: params[:question][:aText], correctAnswer: params[:question][:correctAnswer]))
    # debugger
    @lesson.save
    redirect_to edit_lesson_path(@lesson)
  end
end
