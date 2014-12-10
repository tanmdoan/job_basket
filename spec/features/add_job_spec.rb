require "rails_helper"

describe "Add Jobs", type: :feature do

  it "creates a job manually" do
    login
    click_link "add_job"
    save_and_open_page
    fill_in "job_title", with: "Database Administrator"
    fill_in "job_description", with: "Come make the databases."
    fill_in "job_location", with: "San Francisco, CA"
    fill_in "job_how_to_apply", with: "Email a resume to jobs@github.com"
    fill_in "job_company_name", with: "GitHub"
    fill_in "job_company_url", with: "http://github.com"
    fill_in "job_remote", with: "false"
    click_link_or_button "save_job"
    expect(page).to have_content "Database Administrator"
  end
end
