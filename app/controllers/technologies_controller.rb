class TechnologiesController<ApplicationController

  def index
    @technologies = Technology.all
  end

  def show
    @technology = Technology.find(params[:id])
  end

  def new
    @technology = Technology.new
  end

  def create
    if current_user
      @user = current_user
      @technology = @user.technologies.new(technology_params)
      if @technology.save
        redirect_to root_path
      else
        render :edit
      end
    else
      flash[:notice] = "You must sign in to add a technology"
      redirect_to new_user_registration_path
    end
  end




  private
  def technology_params
    params.require(:technology).permit(:title, :description)

  end

end
