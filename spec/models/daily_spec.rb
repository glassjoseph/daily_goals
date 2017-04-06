require 'rails_helper'


RSpec.describe "Daily is created" do
  context "daily is created with attributes" do
    it "is saved in database" do
      user = create(:user)
      daily = Daily.create(goal: "Did I do my best to exercise today?", user_id: user.id)

      expect(Daily.count).to eq(1)
      expect(daily).to be_valid
    end

    it "has a goal" do
      user = create(:user)
      daily = Daily.create(goal: "Did I do my best to exercise today?", user_id: user.id)

      expect(daily).to respond_to(:goal)
    end
  end

  context "validations" do
    it "is invalid without a goal" do
      user = create(:user)
      daily = Daily.create(user_id: user.id)

      expect(daily).to be_invalid
      expect(Daily.count).to eq(0)
    end

    it "is invalid without a user_id" do
      user = create(:user)
      daily = Daily.create(goal: "Exercise")

      expect(daily).to be_invalid
      expect(Daily.count).to eq(0)
    end


  end

end
