require 'rails_helper'


RSpec.feature "User logging into account" do
  context "successfully" do
    scenario "providing username and password" do
      user = User.create( username: "David",
                          email: "@here",
                          password: "password")
      visit login_path

      fill_in "Username", with: "David"
      fill_in "Password", with: "password"

      click_on "Login"

      expect(current_path).to eq(user_path(user))
      expect(page).to have_content("David")
      expect(page).to have_content("Login Successful")
    end
  end

  context "unsuccessfully" do
    scenario "without username" do
      user = User.create( username: "David",
                          email: "@here",
                          password: "password")
      visit login_path

      fill_in "Password", with: "password"
      click_on "Login"

      expect(current_path).to eq(login_path)
      expect(page).to have_no_content("David")
      expect(page).to have_content("Login Unsuccessful")
    end

    scenario "without password" do
      user = User.create( username: "David",
                          email: "@here",
                          password: "password")
      visit login_path

      fill_in "Username", with: "David"
      click_on "Login"

      expect(current_path).to eq(login_path)
      expect(page).to have_no_content("David")
      expect(page).to have_content("Login Unsuccessful")
    end
  end
end
