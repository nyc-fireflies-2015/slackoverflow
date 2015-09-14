class QuestionsController < ApplicationController
  before_action :require_login, except: [:index, :show]

  def index
    @questions = Question.all.order(id: :desc) || []
  end

  def show
    @question = Question.find(params[:id])
    @comments = @question.comments.sort{|x,y| y.vote_total <=> x.vote_total}
    @upvote = Vote.new
    @downvote = Vote.new
  end

  def new
    @question = Question.new
  end

  def create
    @question = User.find(session[:user_id]).questions.build(question_params)
    if @question.save
      redirect_to question_path(@question)
    else
      flash[:error] = "Something went wrong. Perhaps you left a field empty?"
      render "new"
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    question = Question.find(params[:id])
    if question.update_attributes(question_params)
      redirect_to question_path(question)
    else
      flash[:error] = "Something went wrong. Perhaps you left a field empty?"
      render "edit"
    end
  end

  def destroy
    question = Question.find(params[:id])
    if question.destroy
      redirect_to "/"
    else
      flash[:error] = "Something went wrong."
      redirect_to question_path(question)
    end
  end

  private

  def question_params
    params.require(:question).permit(:title, :body, :all_tags)
  end
end
