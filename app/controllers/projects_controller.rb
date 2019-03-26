class ProjectsController < ApplicationController
  private
    def project_params
      params.require(:project).permit(:title, :description, :picture)
    end
end
