class QuestionsController < ApplicationController
  def new
    @question = Question.new
  end

  def edit
  end

  def show
  end

  def create
    @question = Question.new
    @lesson = Lesson.find(params[:question][:lesson_Id])
    @question.qText = params[:question][:qText]
    @question.aText = params[:question][:aText]
    @question.save
    @lesson.questions << @question
    redirect_to edit_lesson_path(@lesson)
  end
end
