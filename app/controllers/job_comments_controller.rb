class JobCommentsController < AuthorizationController
  def create
    raise 'aaa'
    @job = Job.find_by(params[:id])
    @comment = @job.comments.create(comment_params)
    redirect_to(:back)
  end
end
