class ExtrasController < ApplicationController

  def index
    @extras = Extra.all
  end

  def show
    @extra = Extra.find(params[:id])
  end

  def new
    @extra = Extra.new
  end

  private
    def extra_params
      params.require(:extra).permit(:title, :description)
    end

end
