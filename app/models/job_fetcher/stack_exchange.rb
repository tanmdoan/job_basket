class JobFetcher::StackExchange
  attr_reader :entries
  def initialize
    @entries = Jobs::Remotely::Fetcher.new.fetch_url("http://careers.stackoverflow.com/jobs/feed?tags=ruby", since: (Date.today - 14))
  end
end
