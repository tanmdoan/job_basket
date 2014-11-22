require 'rails_helper'

RSpec.describe Job, :type => :model do
  it 'can take in an array for build job method' do
    jobs = Jobs::Remotely::Fetcher.new.fetch_file('./spec/fixtures/jobs.rss')
    Job.build_remote_jobs(jobs)
    expect(Job.all.count).to eq(25)
  end
end
