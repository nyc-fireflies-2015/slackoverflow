require 'spec_helper'

describe Question do
  it "is valid with a title, body, and author_id" do
    question = Question.new(title:"test", body:"test", author_id: 1)
    expect(question).to be_valid
  end

  it "is invalid without a title" do
    question = Question.new(title:nil, body:"test", author_id: 1)
    question.valid?
    expect(question.errors[:title]).to include("can't be blank")
  end

  it "is invalid without a body" do
    question = Question.new(title:"test", body:nil, author_id: 1)
    question.valid?
    expect(question.errors[:body]).to include("can't be blank")
  end
  
  it "is invalid without an author_id" do
    question = Question.new(title:"test", body:"test", author_id: nil)
    question.valid?
    expect(question.errors[:author_id]).to include("can't be blank")
  end
end
