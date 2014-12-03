class Job < ActiveRecord::Base
  belongs_to :company
  has_many   :comments, as: :commentable
  has_many   :users, through: :favorite_jobs
  has_many   :favorite_jobs


  def job_builder(json_response)
    json_response.each do |job|

      company = Company.find_or_create_by(name: job["company"])
      company_id = company.id
      new_job = company.jobs.new

      new_job.title              = job["title"]
      new_job.description        = job["description"]
      new_job.github_id          = job["github_id"]
      new_job.github_created_at  = job["github_created_at"]
      new_job.location           = job["location"]
      new_job.job_type           = job["type"]
      new_job.how_to_apply       = job["how_to_apply"]
      new_job.github_url         = job["github_url"]
      new_job.company_name       = job["company"]
      new_job.company_logo       = job["company_logo"]
      new_job.company_id         = company_id

      new_job.save
    end
  end

  def self.entries
    JobFetcher::Remote.new.entries
  end


  def self.build_remote_jobs(entries)

    entries.each do |entry|
      self.create(title: entry.title,
                  description: entry.description,
                  url: entry.source_url,
                  posted_on: entry.posted_on,
                  remote: true,
                  user_created: false
                 )
    end
  end

  def self.clear_jobs
    self.where(user_created: false).delete_all
  end

  def self.build_all_jobs
    build_remote_jobs(entries)
  end

end
