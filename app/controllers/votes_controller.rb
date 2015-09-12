class VotesController < ApplicationController

  def create
    vote = Vote.new(vote_params)
    if vote.save!
      if vote.voteable_type == 'comment'
        redirect_to comment_path(id: voteable_id)
      else
        redirect_to question_path(id: voteable_id)
      end
    else
      redirect_to(:root)
    end
  end

  private
  def vote_params
    params.require(:vote).permit(:voter_id, :voteable_type, :voteable_id, :value)
  end
end