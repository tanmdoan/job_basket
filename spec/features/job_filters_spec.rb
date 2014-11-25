require 'rails_helper'

feature "a user filtering jobs", :type => :feature do

  it 'can find jobs based on location' do
    denver_job = FactoryGirl.create(:job, location: 'Denver')
    visit jobs_path
    find(:xpath, "//input[@value='Denver, CO']").set(false)
    expect(page).to_not have_content(denver_job.location)
  end
end
