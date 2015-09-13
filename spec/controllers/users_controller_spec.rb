require 'rails_helper'
require 'pry'

RSpec.describe UsersController, :type => :controller do

  describe 'GET #new' do
    it "renders the :new template" do
      get :new
      expect(response).to render_template :new
    end
  end

  describe 'GET #show' do
    it "assigns the requested user to @user" do
      user = User.create(username: "john", password: "john")
      get :show, id: user
      expect(assigns(:user)).to eq user
    end

    it "renders the :show template" do
      user = User.create(username: "john", password: "john")
      get :show, id: user
      expect(response).to render_template :show
    end
  end

  describe 'POST #create' do
    before :each do
      user1 = User.create(username: "april", password: "april")
    end

    context "with valid attributes" do
      it "saves the new user in the database" do
        expect{ post :create, user: {username: "john", password: "john"} }.to change(User, :count).by(1)
      end

      it "redirects to users#show" do
        post :create, user: {username: "john", password: "john"}
        expect(response).to redirect_to user_path(User.last)
      end
    end

    context "with invalid attributes" do
      it "does not save the new contact in the database" do
        expect{ post :create, user: {username: "ja", password: "jacob"} }.not_to change(User, :count)
      end

      it "re-renders the :new template" do
        post :create, user: {username: "ja", password: "jacob"}
        expect(response).to render_template :new
      end
    end
  end
end
