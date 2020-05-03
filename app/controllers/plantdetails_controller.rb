class PlantdetailsController < ApplicationController
  before_action :authenticate_user!
  def index
  	@plants = Plantdetails.all
  end

  def new
  	@plant = current_user.plantdetails.build
  end

  def create
  	@plant = current_user.plantdetails.build(plantdetails_params)
  	if @plant.save
  		redirect_to root_path, success: "Plantdetails successfully created"
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
  		redirect_to root_path, success: "Plantdetails successfully Updated"
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
    redirect_to root_path, danger: "Plantdetails successfully Deleted"
  end

  def manage 
    @plant = current_user.plantdetails
  end


  private

  def plantdetails_params
  	params.require(:plantdetail).permit(:user_id, :plant_name, :problems, :diffcuilty, :seed_date, :sprout_date, :flower_date, :harvest_date)
  end



end
