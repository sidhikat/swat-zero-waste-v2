class ImagesController < ApplicationController

  def index
    @gallery = Gallery.find(params[:gallery_id])
    @images = @gallery.images.all
  end

  def show
    @gallery = Gallery.find(params[:essay_id])
    @image = @gallery.images.find(params[:id])
  end

  def new
    @gallery = Gallery.find(params[:essay_id])
    @image = @gallery.images.new
  end

  private
    def image_params
      params.require(:image).permit(:caption, :feature, :picture)
    end

end
