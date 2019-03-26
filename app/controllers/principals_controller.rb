class PrincipalsController < ApplicationController

  private
    def principal_params
      params.require(:principal).permit(:title, :description, :picture)
    end
end
