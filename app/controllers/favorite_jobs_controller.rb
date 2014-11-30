class FavoriteJobsController < ApplicationController


  def create
    @favorite_job = current_user.favorite_jobs.create(job_id: params[:job_id])

    if @favorite_job.save
      redirect_to jobs_path, notice: "Favorited job!"
    else
      redirect_to jobs_path, notice: 'Failed to favorite job!'
    end
  end



  private


end
