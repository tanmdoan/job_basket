class FavoriteJobsController < ApplicationController


  def create

    @favorite_job = current_user.favorite_jobs.create(job_id: params[:job_id])

    respond_to do |format|
      if @favorite_job.save
        format.html { redirect_to @favorite_job, notice: 'Favorited job.' }
        format.js   {flash[:notice] = 'Job Favorited'}
        format.json { render json: @favorite_job, status: :created, location: @favorite_job, notice: 'Job Favorited' }

      else
        # format.html { render action: "new" }
        format.json { render json: @favorite_job.errors, status: :unprocessable_entity }
      end
    end
  end



  private


end
