class ImagesController < ApplicationController

  def index
    @gallery = Gallery.find(params[:gallery_id])
    @images = @gallery.images.all
  end

  private
    def image_params
      params.require(:image).permit(:caption, :feature, :picture)
    end

end
