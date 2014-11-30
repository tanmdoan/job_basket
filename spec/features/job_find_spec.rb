require 'rails_helper'

feature "A user finding jobs", :type => :feature do
  let!(:jobs) { FactoryGirl.create_list(:job, 5) }

  it 'can view all the jobs on the page' do
    
  end
end
