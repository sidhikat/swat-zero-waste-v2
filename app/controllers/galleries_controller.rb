class GalleriesController < ApplicationController

  private
    def gallery_params
      params.require(:gallery).permit(:title, :description)
    end
end
