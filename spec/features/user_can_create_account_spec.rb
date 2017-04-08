require 'rails_helper'


RSpec.describe "User creating a new account" do
  context "user goes to login page" do
    it "user can enter info and create account" do
      visit new_user_path

      fill_in "Username", with: "David"
      fill_in "Email", with: "email@place"
      fill_in "Password", with: "password"

      click_on "Create User"

      expect(current_path).to eq(user_path( User.last))
      expect(page).to have_content("Account Created")
      expect(page).to have_content("David")

    end
  end
end
