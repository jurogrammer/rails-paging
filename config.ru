# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

run Rails.application

# config.middleware.insert_before 0, Rack::Cors do
#   allow do
#     origins '*'
#     resource '*', headers: :any, methods: [:get, :post, :options]
#   end
# end