require 'rails_helper'


RSpec.describe "User creating a new account" do
  context "successfully" do
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

  context "unsuccessfully" do
    it "user can't create account without username" do
      visit new_user_path

      fill_in "Email", with: "email@place"
      fill_in "Password", with: "password"

      click_on "Create User"

      expect(current_path).to eq(users_path)
      expect(page).to have_content("Please fill out all fields")
      expect(page).to have_no_content("David")
    end

    it "user can't create account without password" do
      visit new_user_path

      fill_in "Username", with: "Steven"
      fill_in "Email", with: "email@place"

      click_on "Create User"

      expect(current_path).to eq(users_path)
      expect(page).to have_content("Please fill out all fields")
      expect(page).to have_no_content("Steven")
    end
  end

end
