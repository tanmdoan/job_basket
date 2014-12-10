require "rails_helper"

RSpec.describe "Login with GitHub", type: :feature do

  describe "user with valid information" do
    it "is successful" do
      login
    end
  end

  describe "user who is not a member of Turing" do
    it "is shows and error page upon login" do
      VCR.use_cassette('github_groups_without_turing') do
        raw_login
        expect(page).to have_content("Unauthorized")
      end
    end
  end
end
