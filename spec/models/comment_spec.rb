require 'rails_helper'

describe Comment do
  it 'should be valid with a body and commenter_id' do
    comment = Comment.create(body:"test", commenter_id: 5)
    comment.valid?
    expect(comment).to be_valid
  end

  it 'should be invalid without a body' do
    comment = Comment.new(body: nil,commenter_id: 5)
    comment.valid?
    expect(comment.errors[:body]).not_to include("can't be blank")
  end

  it 'should be invalid without a commenter' do
    comment = Comment.new(body: "text",commenter_id: nil)
    comment.valid?
    expect(comment.errors[:commenter_id]).not_to include("can't be blank")
  end
end