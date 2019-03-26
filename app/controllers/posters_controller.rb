class PostersController < ApplicationController

  private
    def poster_params
      params.require(:poster).permit(:event, :title, :description, :feature, :picture)
    end
end
