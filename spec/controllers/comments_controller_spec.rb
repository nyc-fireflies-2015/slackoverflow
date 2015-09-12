class CommentsController < ApplicationController

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def comments_params
    params.require(:comment).permit(:body, :commenter_id, :is_answer)
  end

end