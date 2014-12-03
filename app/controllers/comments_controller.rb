class CommentsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @comment = Comment.new
  end

  def create
    @job     = Job.find_by(params[:id])
    @comment = @job.comments.create(comment_params)
    redirect_to(:back)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:title, :content, :author)
  end


end
