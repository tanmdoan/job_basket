require 'rails_helper'

RSpec.describe Job, :type => :model do
  it 'can take in an array for build job method for we work remote jobs' do
    remote_jobs = Jobs::Remotely::Fetcher.new.fetch_file('./spec/fixtures/jobs.rss')
    Job.build_remote_jobs(remote_jobs)
    expect(Job.all.count).to eq(25)
  end

  it 'can take in an array for build job method for stackexchange jobs' do
    jobs = Jobs::Remotely::Fetcher.new.fetch_file('./spec/fixtures/stack_jobs.rss')
    Job.build_jobs(jobs)
    expect(Job.all.count).to eq(2)
  end
  it { should have_attribute(:location) }
  it { should have_many(:favorite_jobs) }
  it { should have_many(:users).through(:favorite_jobs) }
end
