class PostersController < ApplicationController

  def index
    @posters = Poster.all
  end

  def show
    @poster = Poster.find(params[:id])
  end

  def new
    @poster = Poster.new
  end

  def create
    @poster = Poster.new(poster_params)
    if @poster.save
      redirect_to poster_path(@poster)
    else
      render 'new'
    end
  end

  private
    def poster_params
      params.require(:poster).permit(:event, :title, :description, :feature, :picture)
    end
end
