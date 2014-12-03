class JobsController < ApplicationController
  def index
    @jobs    = Job.all
    @job     = Job.new
  end

  def new
    @job = Job.new
  end

  def show
    @job = Job.find(params[:id])
    @comment = Comment.new
  end

  def create
    description = params["job"]["description"]
    location    = params["job"]["location"]
    options   = "description=#{description}&location=#{location}"
    response  = Faraday.get("https://jobs.github.com/positions.json?#{options}&client_id=#{ENV['GITHUB_KEY']}&client_secret=#{ENV['GITHUB_SECRET']}")
    job       = Job.new
    get_json  = JSON.parse(response.body)
    job.job_builder(get_json)
    @job = Job.create(job_params)
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
