require 'rails_helper'

describe QuestionsController do

  describe "GET /" do
    it "renders the :index template"
    it "populates an array of all questions"
  end

  describe "GET #show" do
    it "assigns the requested question to @question"
    it "renders the :show template"
  end

  describe "GET #new" do
    it "assigns an empty question to @question"
    it "renders the :new template"
  end

  describe "GET #edit" do
    it "assigns the requested question to @question"
    it "renders the :edit template"
  end

  describe "POST #create" do
    it "saves the new valid question"
    it "does not save new invalid question"
    it "redirects to questions/:id if valid"
    it "re-renders :new template if invalid"
  end

  describe "PATCH #update" do
    it "updates the question if valid"
    it "does not update the question if invalid"
    it "redirects to questions/:id if valid"
    it "re-renders :edit template if invalid"
  end

  describe "DELETE #destroy" do
    it "deletes question"
    it "redirects to /"
  end

end
