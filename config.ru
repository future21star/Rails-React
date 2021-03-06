# This file is used by Rack-based servers to start the application.

# require ::File.expand_path('../config/environment', __FILE__)
# run Rails.application


require ::File.expand_path('../config/environment',  __FILE__)

require 'resque/server'
require 'resque-retry/server'
run Rack::URLMap.new \
  "/"       => Quotr::Application,
  "/resque" => Resque::Server.new
