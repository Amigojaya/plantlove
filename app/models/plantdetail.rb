class Plantdetail < ApplicationRecord
	belongs_to :user
	validates :plant_name, presence: true
end
