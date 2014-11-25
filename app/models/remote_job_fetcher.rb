class RemoteJobFetcher
  attr_reader :entries

  def initialize
    @entries = Jobs::Remotely::Fetcher.new.fetch_url("https://weworkremotely.com/categories/2/jobs.rss", :since => (Date.today - 14))
  end
end
