class BiographiesController < ApplicationController

  def index
    @biographies = Biography.all
  end

  private
    def biography_params
      params.require(:biography).permit(:name, :year, :bio, :picture)
    end
end
