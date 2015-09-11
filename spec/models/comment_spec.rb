require 'rails_helper'

describe Comment do
  it 'should be valid with a body and commenter_id' do
    comment = Comment.create(body:"test", commenter_id: 5)
    comment.valid?
    expect(comment).to be_valid
  end

  it 'should be invalid without a body' do
    comment = Comment.create(commenter_id: 5)
    comment.valid?
    expect(comment).to be_valid
  end
end