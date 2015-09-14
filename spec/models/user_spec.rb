require 'rails_helper'

describe User do


  context "validations" do

    it "validates presence of username and password" do
      user = FactoryGirl.build :user
      expect(user).to be_valid
    end

    it "only validates a unique username" do
      user1 = User.create(username: "mary", password: "mary")
      user2 = User.create(username: "mary", password: "foo")
      expect(user2).to be_invalid
    end

    it "doesn't allow a username smaller than 2 characters" do
      user = User.create(username: "jo", password: "john")
      expect(user).to be_invalid
    end


    it "doesn't allow username to be blank" do
      user = FactoryGirl.build :invalid_user
      user.valid?
      expect(user.errors[:username]).to include("can't be blank")
    end
  end
end
