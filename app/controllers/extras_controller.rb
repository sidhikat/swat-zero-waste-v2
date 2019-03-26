class ExtrasController < ApplicationController

  private
    def extra_params
      params.require(:extra).permit(:title, :description)
    end

end
