require 'rails_helper'

describe VotesController do

  describe "POST #create" do
    it 'saves the new valid vote' #do
    #   attribs = FactoryGirl.attributes_for(:vote)
    #   post :create, { vote: attribs }
    #   expect(response).to redirect_to(comment_path(:vote.voteable))
    # end
    it 'does not save new invalid vote'
    it 'rerenders the current page'
  end

end