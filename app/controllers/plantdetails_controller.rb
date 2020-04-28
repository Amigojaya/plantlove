class PlantdetailsController < ApplicationController
  def index
  	@plants = Plantdetails.all
  end

  def new
  	@plant = current_user.plantdetails.build
  end

  def create
  	@plant = current_user.plantdetails.build(plantdetails_params)
  	if @plant.save
  		redirect_to root_path
  	else
  		render 'new'
  	end

  end

  def edit
  	@plant = current_user.plantdetails.find(params[:id])
  end

  def update
  	@plant = current_user.plantdetails.find(params[:id])
  	if @plant.update(plantdetails_params)
  		redirect_to root_path
  	else
  		render 'edit'
  	end

  end

  def show
  	@plant = current_user.plantdetails.find(params[:id])
  end

  def destroy
  	@plant = current_user.plantdetails.find(params[:id])
    @plant.destroy
    redirect_to root_path
  end


  private

  def plantdetails_params
  	params.require(:plantdetail).permit(:user_id, :plant_name, :problems, :diffcuilty, :seed_date, :sprout_date, :flower_date, :harvest_date)
  end



end
