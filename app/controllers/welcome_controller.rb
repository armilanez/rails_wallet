class WelcomeController < ApplicationController
  layout "application"
  def index
    @my_name = params[:name]
    @course = "Rails"
  end

  
end
