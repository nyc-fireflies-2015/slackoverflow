require 'rails_helper'

describe Question do
  it "is valid with a title, body, and author_id" do
    question = Question.new(title:"test", body:"test", author_id: 1)
    expect(question).to be_valid
  end

  it "is invalid without a title" do
    question = Question.new(title:nil, body:"test", author_id: 1)
    expect(question).not_to be_valid
  end

  it "is invalid without a body" do
    question = Question.new(title:"test", body:nil, author_id: 1)
    expect(question).not_to be_valid
  end

  it "is invalid without an author_id" do
    question = Question.new(title:"test", body:"test", author_id: nil)
    expect(question).not_to be_valid
  end
end
