require 'rails_helper'

RSpec.describe UsersController, :type => :controller do

  describe 'GET #new' do
    it "renders the :new template" do
    end
  end

  describe 'GET #show' do
    it "assigns the requested user to @user" do
    end

    it "renders the :show template" do
    end
  end

  describe 'POST #create' do
    context "with valid attributes" do
      it "saves the new user in the database" do
      end

      it "redirects to users#show" do
      end
    end

    context "with invalid attributes" do
      it "does not save the new contact in the database" do
      end

      it "re-renders the :new template" do
      end
    end
  end
end
