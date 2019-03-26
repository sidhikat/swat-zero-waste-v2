class ProjectsController < ApplicationController

  def index
    @project = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  private
    def project_params
      params.require(:project).permit(:title, :description, :picture)
    end
end
