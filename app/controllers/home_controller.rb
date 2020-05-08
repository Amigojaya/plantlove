class HomeController < ApplicationController
  def index

  	if current_user
  		redirect_to home_dashboard_path
  	end

  end
  

  def dashboard
  	@plant = current_user.plantdetails
  end

  def about_me

  end

  def how_it_works
  end

  def admin
    if current_user.admin?
      @user = User.all
    else
      redirect_to root_path
    end
  end


   

end
