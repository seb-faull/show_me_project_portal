class ProjectsController < ApplicationController

  #Index
  def index
    @users = User.all #Line changed
    @projects = if params[:term]
        Project.where('title LIKE ?', "%#{params[:term]}%")
      else
        @projects = current_user.projects
      end
  end

  #Show
  def show
    @project = Project.find(params[:id])
    @users = User.all #Line changed
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
    if current_user.role == "Admin"
      Project.destroy(params[:id])

    else 
      current_user.projects.destroy(params[:id])

    end
    
    redirect_to projects_url
  end

  protected
  def project_params
    params.require(:project).permit(:title, :description, :live, :collabarators, :image, :css, :html, :javascript, :ruby, :rails, :term)
  end

end
