class PostersController < ApplicationController

  def index
    @posters = Poster.all
  end

  private
    def poster_params
      params.require(:poster).permit(:event, :title, :description, :feature, :picture)
    end
end
