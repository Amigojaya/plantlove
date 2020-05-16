class HomeController < ApplicationController
  def index

  	if current_user
  		redirect_to home_dashboard_path
  	end

  end
  

  def dashboard
    if current_user
  	   @plant = current_user.plantdetails
    else
      redirect_to new_user_session_path,  notice: "Please log-in to access"
    end
  end

  def about_me

  end

  def how_it_works
  end

  def admin
    if current_user.admin?
      @user = User.all.order(id: "desc")
    else
      redirect_to root_path
    end
  end

  def progress
    if current_user.admin?
      @width = 99
    else
      redirect_to root_path
    end
  end


   

end
