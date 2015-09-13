class VotesController < ApplicationController

  def create
    vote = Vote.create(voter_id: params[:voter_id], voteable_type: params[:voteable_type], voteable_id: params[:voteable_id], value: params[:value])
    if vote.voteable_type == "Question"
      redirect_to question_path(id: vote.voteable_id)
    else
      redirect_to question_path(Comment.find(vote.voteable).commentable)
    end
  end

  # private
  # def vote_params
  #   params.require(:vote).permit(:voter_id, :voteable_type, :voteable_id, :value)
  # end
end
