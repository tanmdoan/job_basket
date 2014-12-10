require "rails_helper"

RSpec.describe "Login with GitHub", type: :feature do

  describe "user with valid information" do
    it "is successful" do

      visit root_path
      expect(page).to have_css('#login')

      login
      expect(page).to have_content "Jobs"
    end
  end

  describe "user with invalid information" do
    it "has authentication errors" do
      OmniAuth.config.mock_auth[:github] = :invalid_credentials
      visit root_path
      click_link "Connect with Github"
      expect(page).to have_content("Sorry, login failed!")
    end
  end
end
