class VotesController < ApplicationController

  def create
    vote = Vote.create(voter_id: params[:voter_id], voteable_type: params[:voteable_type], voteable_id: params[:voteable_id], value: params[:value])
    redirect_to question_path(id: vote.voteable_id)
  end

  # private
  # def vote_params
  #   params.require(:vote).permit(:voter_id, :voteable_type, :voteable_id, :value)
  # end
end
