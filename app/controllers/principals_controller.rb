class PrincipalsController < ApplicationController

#lol so I misspelled principle, lol, but we can go with it.
#makes more sense at this point to keep the misspelling than go back
# and redo everything.

  def index
    @principals = Principal.all
  end

  def show
    @principal = Principal.find(params[:id])
  end

  def new
    @principal = Principal.new
  end

  def create
    @principal = Principal.new(principal_params)
    if @principal.save
      redirect_to principal_path(@principal)
    else
      render 'new'
    end
  end

  def edit
    @principal = Principal.find(params[:id])
  end

  def update
    @principal = Principal.find(params[:id])
    if @principal.update(principal_params)
      redirect_to principal_path(@principal)
    else
      render 'edit'
    end
  end

  def destroy
    @principal = Principal.find(params[:id])
    @principal.destroy

    redirect_to principals_path
  end

  private
    def principal_params
      params.require(:principal).permit(:title, :description, :picture)
    end
end
