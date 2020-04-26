class CreatePlantdetails < ActiveRecord::Migration[6.0]
  def change
    create_table :plantdetails do |t|
      t.references :user, null: false, foreign_key: true
      t.string :plant_name
      t.text :problems
      t.string :diffcuilty

      t.timestamps
    end
  end
end
