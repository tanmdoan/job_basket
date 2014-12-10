require "rails_helper"

RSpec.describe "Login with GitHub", type: :feature do

  describe "user with valid information" do
    it "is successful" do
      login
    end
  end

  describe "user with invalid information" do
    it "has authentication errors" do
      OmniAuth.config.mock_auth[:github] = :invalid_credentials
      visit root_path
      click_link_or_button 'login'
      expect(page).to have_content("Sorry, login failed!")
    end
  end
end
