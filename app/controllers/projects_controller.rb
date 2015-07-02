class ProjectsController<ApplicationController

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    if current_user
      @user = current_user
      @technology = Technology.find(params[:id])
      @project = @user.technologies.new(technology_params)
      if @project.save
        redirect_to root_path
      else
        render :edit
      end
    else
      flash[:notice] = "You must sign in to add a project"
      redirect_to new_user_registration_path
    end
  end




  private
  def technology_params
    params.require(:project).permit(:title, :description)

  end

end
