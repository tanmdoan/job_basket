describe JobFetcher::Remote, type: :model do
  it 'can exists' do
    fetcher = JobFetcher::Remote.new
    expect(fetcher).to be_an_instance_of(JobFetcher::Remote)
  end

  it 'can get entries back from the jobs remotely gem' do
    fetcher = JobFetcher::Remote.new
    expect(fetcher.entries.class).to eq(Array)
  end
end
