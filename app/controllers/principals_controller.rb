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

  private
    def principal_params
      params.require(:principal).permit(:title, :description, :picture)
    end
end
