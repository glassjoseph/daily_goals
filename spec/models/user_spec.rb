require 'rails_helper'



RSpec.describe "User is created" do
  context "attributes" do
    it "user has a username" do
      user = User.create(username: "James")


      expect(user.username).to eq("James")
      expect(user).to respond_to(:username)
    end

    it "user has a password" do
      user = User.create(username: "James", password: "password")


      expect(user.username).to eq("James")
      expect(user).to respond_to(:username)
    end

    it "user has a role" do
      user = create(:user)

      expect(user.role).to eq("default")
    end
    

  context "validations" do
    it "is invalid without username" do
      user = User.create( password: "password")
      expect(user).to be_invalid
    end

    it "is invalid without password" do
      user = User.create(username: "Bill")
      expect(user).to be_invalid
    end
  end

  context "relationships"
    it "user has dailies" do
      user = create(:user)
      user.dailies.create(goal: "Did I do my best to exercise today?")
      user.dailies.create(goal: "Did I do my best to study Ruby today?")

      expect(user.dailies.count).to eq(2)
      expect(user.dailies.first.goal).to eq("Did I do my best to exercise today?")
      expect(user.dailies.last.goal).to eq("Did I do my best to study Ruby today?")

    end
  end






end


    # it "user has dailies" do
    #   user = User.create(username: "James",
    #
