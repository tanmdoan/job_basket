require "rails_helper"

describe "Add Jobs", type: :feature do

  it "creates a job manually" do
    login
    click_link "Add Jobs"
    fill_in "Title", with: "Job Title"
    fill_in "Description", with: "Job Description"
    fill_in "Location", with: "Job Location"
    fill_in "How to apply", with: "Job How to apply"
    fill_in "Company name", with: "Job Company name"
    fill_in "Company url", with: "Job Company url"
    fill_in "Remote", with: "true"
    click_button "Create Job"
    expect(page).to have_content "Job Title"
  end
end
