class BiographiesController < ApplicationController

  def index
    @biographies = Biography.all
  end

  def show
    @biography = Biography.find(params[:id])
  end

  private
    def biography_params
      params.require(:biography).permit(:name, :year, :bio, :picture)
    end
end
