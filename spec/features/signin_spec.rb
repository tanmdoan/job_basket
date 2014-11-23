require "rails_helper"

RSpec.describe "Login with GitHub", type: :feature do

  describe "user with valid information" do
    it "is successful" do
      github_mock_auth
      visit root_path
      expect(page).to have_content "Sign in with GitHub"
      click_link "Sign in with GitHub"
      expect(page).to have_content "Jobs"
    end
  end

  describe "user with invalid information" do
    it "has authentication errors" do
      OmniAuth.config.mock_auth[:github] = :invalid_credentials
      visit root_path
      click_link "Sign in with GitHub"
      expect(page).to have_content("Sorry, login failed!")
    end
  end
end
