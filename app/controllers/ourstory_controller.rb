class OurstoryController < ApplicationController
  def index
    @biographies = Biography.all
  end
end
