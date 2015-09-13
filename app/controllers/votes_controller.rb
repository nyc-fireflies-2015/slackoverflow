class VotesController < ApplicationController

  def create
    binding.pry
    vote = Vote.new(vote_params)
    if vote.save!
      if vote.voteable_type == 'comment'
        return vote.comment.votes.count.to_s
      else
        return vote.comment.votes.count.to_s
      end
    else
      redirect_to question_path(id: voteable_id)
    end
  end

  private
  def vote_params
    params.require(:vote).permit(:voter_id, :voteable_type, :voteable_id, :value)
  end
end