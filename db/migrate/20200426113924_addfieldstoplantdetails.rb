class Addfieldstoplantdetails < ActiveRecord::Migration[6.0]
  def change
  	add_column :plantdetails, :seed_date, :date
  	add_column :plantdetails, :sprout_date, :date
  	add_column :plantdetails, :flower_date, :date
  	add_column :plantdetails, :harvest_date, :date
  	add_column :plantdetails, :sprout_days, :integer
  	add_column :plantdetails, :flower_days, :integer
  	add_column :plantdetails, :harvest_days, :integer
  end
end
