require 'rails_helper'

describe User do
  context "validations" do

    it "validates presence of username and password" do
      user = User.create(username: "john", password: "john")
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

    it "doesn't allow a username larger than 12 characters" do
      user = User.create(username: "johnnyappleseed", password: "john")
      expect(user).to be_invalid
    end

  end
end
