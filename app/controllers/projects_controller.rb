class ProjectsController < ApplicationController

  def index
    @project = Project.all
  end

  private
    def project_params
      params.require(:project).permit(:title, :description, :picture)
    end
end
