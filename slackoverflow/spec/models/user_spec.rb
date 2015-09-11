require 'spec_helper'

describe User do
  context "validations" do

    it "validates presence of username" do
      user = User.new(username: "john", password: "john")
      expect(user).to be_valid
    end

    it "validates presence of password" do
      user = User.new(username: "john", password: "john")
      expect(user).to be_valid
    end

    it "validates a unique username" do
      user1 = User.create(username: "mary", password: "mary")
      user2 = User.new(username: "mary", passwrod: "foo")
      expect(user2).to be_invalid
    end
  end
end
