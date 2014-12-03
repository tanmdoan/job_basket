class GithubJob < ActiveRecord::Base

  def json_response
    response  = Faraday.get("https://jobs.github.com/positions.json?#{options}")
    get_json  = JSON.parse(response.body)
  end

  def options
    "description=ruby&location=new+york&full_time=true"
  end

  def job_builder(json_response)
    json_response.each do |job|
      unless Job.exists?(github_id: job["github_id"])
        company = Company.find_or_create_by(name: job["company"])

        new_job = company.jobs.new

        new_job.title              = job["title"]
        new_job.description        = job["description"]
        new_job.company_id         = job["company_id"]
        new_job.github_id          = job["github_id"]
        new_job.github_created_at  = job["github_created_at"]
        new_job.location           = job["location"]
        new_job.job_type           = job["type"]
        new_job.how_to_apply       = job["how_to_apply"]
        new_job.company            = job["company"]
        new_job.company_logo       = job["company_logo"]
        new_job.github_url         = job["github_url"]
        new_job.user_created       = false
      end
    end
    company.save
  end

end
