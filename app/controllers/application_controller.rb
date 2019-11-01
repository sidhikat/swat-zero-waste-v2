class ApplicationController < ActionController::Base
  before_action :access_pods

  protected

  def access_pods
    @project = Project.all
  end

end
