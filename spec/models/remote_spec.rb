require 'rails_helper'

describe JobFetcher::Remote, type: :model do
  it 'gets entries back from the jobs remotely gem' do
    VCR.use_cassette('jobfetcher_remotely') do
      fetcher = JobFetcher::Remote.new
      expect(fetcher.entries).to respond_to(:each)
    end
  end
end
