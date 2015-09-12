class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
  end

  def show
  end

  private
  def comments_params
    params.require(:comment).permit(:body, :commenter_id, :is_answer, :commentable_type, :commentable_id)
  end

end