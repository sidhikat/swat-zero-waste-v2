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

  def create
    @extra = Extra.new(extra_params)
    if @extra.save
      redirect_to extra_path(@extra)
    else
      render 'new'
    end
  end

  def edit
    @extra = Extra.find(params[:id])
  end

  def update
    @extra = Extra.find(params[:id])
    if @extra.update(extra_params)
      redirect_to extra_path(@extra)
    else
      render 'edit'
    end
  end

  private
    def extra_params
      params.require(:extra).permit(:title, :description)
    end

end
