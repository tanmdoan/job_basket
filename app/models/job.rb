class Job < ActiveRecord::Base
  belongs_to :company


  def self.entries
    RemoteJobFetcher.new.entries
  end

  def self.build_remote_jobs(entries)

    entries.each do |entry|
      self.create(title: entry.title,
                  description: entry.description,
                  url: entry.source_url,
                  posted_on: entry.posted_on,
                  remote: true
                 )
    end
  end

end
