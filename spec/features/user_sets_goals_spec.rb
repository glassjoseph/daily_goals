require "rails_helper"


RSpec.describe "User setting goals" do
  context "User fills out goals successfully" do
    scenario "user enters goals" do
      user = create(:user)
      visit user_path(user)

      click_on "Create Dailies"

      fill_in "Daily 1", with: "Goal 1"
      fill_in "Daily 2", with: "Goal 2"
      fill_in "Daily 3", with: "Goal 3"
      fill_in "Daily 4", with: "Goal 4"
      fill_in "Daily 5", with: "Goal 5"
      fill_in "Daily 6", with: "Goal 6"

      click_on "Submit"

      expect(page).to eq(user_path(user))
      expect(page).to have_link("Your Dailies", :href=>"")
      expect(page).to have_link("See Scores", :href=>"")
      expect(page).to have_content()



    end
  end
end
