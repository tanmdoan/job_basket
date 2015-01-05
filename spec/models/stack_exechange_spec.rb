describe JobFetcher::StackExchange, type: :model do
  it 'gets job entries back' do
    VCR.use_cassette('jobfetcher_stackexchange') do
      stack = JobFetcher::StackExchange.new
      expect(stack.entries).to respond_to(:each)
    end
  end
end
