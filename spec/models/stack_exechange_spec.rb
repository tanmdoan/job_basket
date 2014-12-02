describe JobFetcher::StackExchange, type: :model do
  it 'can exists' do
    stack = JobFetcher::StackExchange.new
    expect(stack).to be_an_instance_of(JobFetcher::StackExchange)
  end

  it 'can get job entries back' do
    stack = JobFetcher::StackExchange.new
    expect(stack.entries.class).to eq(Array)
  end
end
