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

  it 'can build all the jobs' do
    remote_jobs = Jobs::Remotely::Fetcher.new.fetch_file('./spec/fixtures/jobs.rss')
    jobs = Jobs::Remotely::Fetcher.new.fetch_file('./spec/fixtures/stack_jobs.rss')

    all_jobs = Job.build_all_jobs(remote_jobs, jobs)

    expect(Job.all.count).to eq(27)
  end

  it 'can clear jobs' do
    remote_jobs = Jobs::Remotely::Fetcher.new.fetch_file('./spec/fixtures/jobs.rss')
    jobs = Jobs::Remotely::Fetcher.new.fetch_file('./spec/fixtures/stack_jobs.rss')
    Job.build_all_jobs(remote_jobs, jobs)
    Job.clear_jobs
    expect(Job.all.count).to eq(0)
  end

  it 'can find unique locations from jobs' do
    job1 = FactoryGirl.create(:job, location: 'Denver')
    job2 = FactoryGirl.create(:job, location: 'Denver')
    job3 = FactoryGirl.create(:job, location: 'D.C.')


    uniq_locations = Job.unique_locations
    expect(uniq_locations).to contain_exactly('Denver', 'D.C.')
  end



  it { should have_attribute(:location) }
  it { should have_many(:favorite_jobs) }
  it { should have_many(:users).through(:favorite_jobs) }
end
