class Job < ActiveRecord::Base
  belongs_to :company


  def self.build_remote_jobs(entries)

    entries.each do |entry|
      self.create(title: entry.title,
                  description: entry.description,
                  url: entry.source_url,
                  created_at: entry.posted_on,
                  remote: true
                 )
    end
  end

end
