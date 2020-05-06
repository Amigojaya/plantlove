# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!


ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.raise_delivery_errors = true
