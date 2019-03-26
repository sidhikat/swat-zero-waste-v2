class BiographiesController < ApplicationController

  private
    def biography_params
      params.require(:biography).permit(:name, :year, :bio, :picture)
    end
end
