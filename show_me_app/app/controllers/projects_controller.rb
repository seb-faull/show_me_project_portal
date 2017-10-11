class ProjectsController < ApplicationController

  # before_action :authenticate_user!

  #Index
  def index
    @projects = current_user.projects
  end


  #Show
  def show
    @project = Project.find(params[:id])
  end


  #New
  def new
    @project = current_user.projects.new
  end


  #Create
  def create
    new_project = current_user.projects.create(project_params)
    new_project.save

    redirect_to new_project
  end


  #Edit
  def edit
    @project = current_user.projects.find(params[:id])

  end


  #Update
  def update

    if current_user.role == "Admin"
      project = Project.find(params[:id])
      project.update(project_params)


    else 
      project = current_user.projects.find(params[:id])
      project.update(project_params)

    end
    redirect_to project
  end


  #Destroy
  def destroy
    current_user.projects.destroy(params[:id])
    redirect_to projects_url
  end

  protected
  def project_params
    params.require(:project).permit(:title, :description, :live, :img_url)      # <----- UPDATE img_url !!!!
  end

end
