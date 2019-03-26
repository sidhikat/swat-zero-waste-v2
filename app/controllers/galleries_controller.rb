class GalleriesController < ApplicationController

  def index
    @galleries = Gallery.all
  end

  private
    def gallery_params
      params.require(:gallery).permit(:title, :description)
    end
end
