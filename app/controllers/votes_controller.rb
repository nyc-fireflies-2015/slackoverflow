class VotesController < ApplicationController

  def create
    vote = Vote.create(vote_params)
    if request.xhr?
      # binding.pry
      # vote.voteable.votes.count.to_s
      # render :template => "app/views/questions/vote"
    else
      redirect_to question_path(id: voteable_id)
    end
  end

  private
  def vote_params
    params.require(:vote).permit(:voter_id, :voteable_type, :voteable_id, :value)
  end
end