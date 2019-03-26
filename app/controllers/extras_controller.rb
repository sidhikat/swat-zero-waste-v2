class ExtrasController < ApplicationController

  def index
    @extras = Extra.all
  end

  private
    def extra_params
      params.require(:extra).permit(:title, :description)
    end

end
