class QuestionsController < ApplicationController
  responds_to :html, :json

  def create
    respond_with Question.create params[:qText], params[:aText], params[:correctAnswer]
  end

  def edit
    respond_with Question.find(params[:id]).update_attributes params[:qText], params[:aText], params[:correctAnswer] 
  end

  def remove
    respond_with Question.find(params[:id]).destroy
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
