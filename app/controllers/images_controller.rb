class ImagesController < ApplicationController

  private
    def image_params
      params.require(:image).permit(:caption, :feature, :picture)
    end

end
