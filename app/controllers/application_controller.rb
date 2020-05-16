class ApplicationController < ActionController::Base

	add_flash_types :danger, :info, :warning, :success
	config.time_zone = 'Kolkata'

end
