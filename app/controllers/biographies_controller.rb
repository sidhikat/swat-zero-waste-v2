class BiographiesController < ApplicationController

  def index
    @biographies = Biography.all
  end

  def show
    @biography = Biography.find(params[:id])
  end

  def new
    @biography = Biography.new
  end

  def create
    @biography = Biography.new(biography_params)
    if @biography.save
      redirect_to biography_path(@biography)
    else
      render 'new'
    end
  end

  private
    def biography_params
      params.require(:biography).permit(:name, :year, :bio, :picture)
    end
end
