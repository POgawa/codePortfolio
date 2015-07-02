class TechnologiesController<ApplicationController

  def index
    @technologies = Technology.all
  end

  def show
    @technology = Technology.find(params[:id])
  end






  private
  def technology_params
    params.require(:technology).permit(:title, :description)

  end

end
