class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    question = User.find_by(session[:user_id]).questions.build(question_params)
    if question.save
      redirect_to "/questions/#{question.id}"
    else
      flash[:error] = "Something went wrong. Perhaps you left a field empty?"
      redirect_to "/questions/new"
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    question = Question.find(params[:id])
    if question.update_attributes(question_params)
      redirect_to "/questions/#{question.id}"
    else
      flash[:error] = "Something went wrong. Perhaps you left a field empty?"
      redirect_to "/questions/#{question.id}/edit"
    end
  end

  def destroy
    question = Question.find(params[:id])
    if question.destroy
      redirect_to "/"
    else
      flash[:error] = "Something went wrong."
      redirect_to "/questions/#{question.id}"
  end

  private

  def question_params
    params.require(:question).permit(:title, :body)
  end
end
