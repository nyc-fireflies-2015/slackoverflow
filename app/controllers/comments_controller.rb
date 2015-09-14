class CommentsController < ApplicationController
  before_action :require_login

  def new
    @comment = Comment.new(commentable_id: params[:commentable][:commentable_id], commentable_type: params[:commentable][:commentable_type])
  end

  def create
    comment = Comment.new(comments_params)
    if comment.save
      if comment.commentable_type == "Question"
        redirect_to question_path(id: comment.commentable_id)
      else
        redirect_to question_path(Comment.find(comment.commentable).commentable)
      end
    else
      error_message = "ERROR: your comment wasn't saved"
      render error_message
    end
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update_attributes(comments_params)
    @question = @comment.commentable
    redirect_to @question
  end

  private
  def comments_params
    params.require(:comment).permit(:body, :commenter_id, :is_answer, :commentable_type, :commentable_id)
  end

end
