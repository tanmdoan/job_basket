class CompaniesController < AuthorizationController
  def index
    @companies = Company.all
  end

  def show
    @company  = Company.find(params[:id])
    @comments = @company.comments
    @comment  = Comment.new
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
