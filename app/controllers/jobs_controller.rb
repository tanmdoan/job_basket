class JobsController < ApplicationController
  def index
    jobs    = Job.all
    @job    = Job.new
  end

  def show
    @job = Job.find(params[:id])
  end

  def create
    description = params["job"]["description"]
    location    = params["job"]["location"]
    options   = "description=#{description}&location=#{location}"
    response  = Faraday.get("https://jobs.github.com/positions.json?#{options}")
    get_json  = JSON.parse(response.body)
    job       = Job.new
    job.job_builder(get_json)
    redirect_to jobs_path
  end

  private

  def job_params
    params.require(:job).permit(:title,
                                :description,
                                :company_id,
                                :github_id,
                                :github_created_at,
                                :location,
                                :job_type,
                                :how_to_apply,
                                :company_name,
                                :company_url,
                                :company_logo,
                                :github_url,
                                :full_time)
  end
end
