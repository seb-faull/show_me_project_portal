class TagsController < ApplicationController
  def new
  	@project = Project.find(params[:project_id])
  	@tag = Tag.new
  end

  def create
  	project = Project.find(params[:project_id])
  	project.tags.create(tag_params)
  	redirect_to project
  end

  def destroy
    project = Project.find(params[:project_id])
    project.tags.destroy(params[:id])
    redirect_to projects_url
  end

  protected 
  def tag_params
    params.require(:tag).permit(:html, :css, :javascript, :jquery, :bootstrap, :ruby, :rails, :sql, :php, :python, :csharp, :java)
  end
end
