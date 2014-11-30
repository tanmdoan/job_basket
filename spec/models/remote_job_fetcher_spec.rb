describe RemoteJobFetcher, type: :model do
  it 'can exists' do
    fetcher = RemoteJobFetcher.new
    expect(fetcher).to be_an_instance_of(RemoteJobFetcher)
  end

  it 'can get entries back from the jobs remotely gem' do
    fetcher = RemoteJobFetcher.new
    expect(fetcher.entries.class).to eq(Array)
  end
end
