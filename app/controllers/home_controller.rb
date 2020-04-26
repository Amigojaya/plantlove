class HomeController < ApplicationController
  def index

  	if current_user
  		redirect_to home_dashboard_path
  	end

  end

  def dashboard
  	@plant = current_user.plantdetails
  end
end
