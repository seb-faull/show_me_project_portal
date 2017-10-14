class ProjectsController < ApplicationController

  #Index
  def index
    @projects = current_user.projects

    @users = User.all #Line changed
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


  require 'builder'
  require 'will_paginate'
  include ActionView::Helpers::NumberHelper

    def index
      @filterrific = Filterrific.new(Project, params[:filterrific])
      @filterrific.select_options = {
        sorted_by: Project.options_for_sorted_by,
        with_project: Project.options_for_select
      }
      @projects = Project.filterrific_find(@filterrific).page(params[:page]).with_projects

      respond_to do |format|
        format.html
        format.js
      end
    end

    def reset_filterrific
      # Clear session persistence
      session[:filterrific_projects] = nil
      # Redirect back to the index action for default filter settings.
      redirect_to action: :index
    end
  end

  protected
  def project_params
    params.require(:project).permit(:title, :description, :live, :collabarators, :img_url)
  end

end
